#!/bin/bash -e

#
# BTLS (TLS 1.2) support is not enabled by default in the current Mono (as of Oct 12 2016)
#
export MONO_TLS_PROVIDER=btls

JUST_HELP=no
XAMARIN_TOP="$HOME/vc/xamarin/"
XS_SOURCE="${XAMARIN_TOP}/monodevelop"
XS_PREFIX="$DEFAULT_MONO_PREFIX"
XS_DEST="${XS_PREFIX}/lib/monodevelop"
MD_ADDINS_SOURCE="${XAMARIN_TOP}/md-addins"
PATCHES_TOP_DIR="$HOME/devel/diffs"
MD_ADDINS_PATCHES_DIR="$PATCHES_TOP_DIR/md-addins"
XS_PATCHES_DIR="$PATCHES_TOP_DIR/xamarin-studio"
XS_PATCHES_APPLIED="no"
MD_ADDINS_PATCHES_APPLIED="no"

XS_BRANCH="master"
MD_ADDINS_BRANCH="${XS_BRANCH}"

function cleanup()
{
    if [ "$JUST_HELP" = "no" ]; then
	if [ "$XS_PATCHES_APPLIED" = "yes" ]; then
		pushd "$XS_SOURCE" || true
		unapply_patches "$XS_PATCHES_DIR" || true
		popd || true
	fi

	if [ "$MD_ADDINS_PATCHES_APPLIED" = "yes" ]; then
		pushd "$MD_ADDINS_SOURCE" || true
		unapply_patches "$MD_ADDINS_PATCHES_DIR" || true
		popd || true
	fi
    fi
}

function sync_addin()
{
    local addin_from="${1}/build"
    local addin_to="${XS_DEST}/${2}/"
    local delete_after=""

    if [ -z "$3" ]; then
	      delete_after="--delete-after"
    fi
    pushd "$addin_from"
    install -d -m 755 "${addin_to}"
    rsync -a --progress ${delete_after} . "${addin_to}"
    popd
}

function usage()
{
    JUST_HELP=yes
    cat <<EOF
usage: build-xs [OPTIONS]
where OPTIONS are:
  -h|--help                  show this screen
  -n|--no-pull               do not pull the latest changes
  -f|--full                  clean up the repository before building/pulling changes (git clean -xdff!)
  -r|--reset                 reset the repositories to HEAD before doing anything else
  -b|--branch NAME           checkout the NAME branch for both XS and addins (default: $XS_BRANCH)
  -m|--md-branch NAME        checkout the NAME branch for XS (default: $XS_BRANCH)
  -a|--addins-branch NAME    checkout the NAME branch for addins (default: $MD_ADDINS_BRANCH)
  -p|--purge                 purge Xamarin Studio from the destination location before installing
  -s|--system-mono           use system Mono to build
EOF
    exit 0
}

function do_git_dance()
{
    local branch="$1"

    if [ -n "${GIT_RESET}" ]; then
	      git reset --hard HEAD
    fi

    if [ -n "${FULL_REBUILD}" ]; then
	      git clean -xdff
	      git submodule foreach git clean -xdff
    fi

    git checkout "${branch}"

    if [ -z "${NO_PULL}" ]; then
	      git pull
    fi
    git reset-submodules
}

function apply_patches()
{
    local pdir="$1"
    local diffs

    if [ ! -d "$pdir" ]; then
	      return
    fi

    diffs="`find $pdir -name '*.diff' | sort`"
    if [ -z "$diffs" ]; then
	      return
    fi
    for p in $diffs; do
	      echo "Applying patch: $p"
	      patch -p1 < "$p"
    done
}

function unapply_patches()
{
    local pdir="$1"
    local diffs

    if [ ! -d "$pdir" ]; then
	      return
    fi

    diffs="`find $pdir -name '*.diff' | sort -r`"
    if [ -z "$diffs" ]; then
	      return
    fi
    for p in $diffs; do
	      echo "Reverting patch: $p"
	      patch -R -p1 < $p
    done
}

trap cleanup 0

TEMP=`getopt -o hnfb:m:a:rps --long help,no-pull,full,branch,md-branch,addins-branch,reset,purge,system-mono -n 'build-xs' -- "$@"`
if [ $? != 0 ] ; then
    echo "Terminating..." >&2
    exit 1
fi
eval set -- "$TEMP"

while true; do
    case "$1" in
        -h|--help) usage ;;
        -n|--no-pull) NO_PULL=1; shift 1 ;;
        -f|--full) FULL_REBUILD=1; shift 1 ;;
        -r|--reset) GIT_RESET=1; shift 1 ;;
        -b|--branch) XS_BRANCH="$2"; MD_ADDINS_BRANCH="$2"; shift 2 ;;
        -m|--md-branch) XS_BRANCH="$2"; shift 2 ;;
        -a|--addins-branch) MD_ADDINS_BRANCH="$2"; shift 2 ;;
        -p|--purge) PURGE_DEST=1; shift 1 ;;
        -s|--system-mono) USE_SYSTEM_MONO=1; shift 1 ;;
        --) shift ; break ;;
    esac
done

if [ "$USE_SYSTEM_MONO" = "1" ]; then
    if [ -x /usr/bin/mono-snapshot ]; then
        . mono-snapshot
    else
        export PATH="/usr/bin:$PATH"
    fi
fi

pushd "${XS_SOURCE}"
do_git_dance "${XS_BRANCH}"

if [ ! -f profiles/linux ]; then
    cat <<EOF > profiles/linux
main
EOF
fi
apply_patches "$XS_PATCHES_DIR"
XS_PATCHES_APPLIED="yes"

echo Using nuget: `which nuget`
for f in `find -name '*.sln' -type f`; do
	echo "Restoring nugets for: $f"
	nuget restore -Verbosity detailed -DisableParallelProcessing $f
	echo
done

export MSBuildExtensionsPathSearchPathsForUnix="$MSBuildExtensionsPath"
unset MSBuildExtensionsPath
./configure --prefix="${XS_PREFIX}" --profile=linux
make XBUILD_VERBOSITY=diag V=1

if [ -n "$PURGE_DEST" ]; then
    if [ -d "${XS_DEST}" ]; then
	      rm -rf "${XS_DEST}"
    fi
fi
make V=1 install
popd


pushd "${MD_ADDINS_SOURCE}"
do_git_dance "${MD_ADDINS_BRANCH}"
apply_patches "$MD_ADDINS_PATCHES_DIR"
MD_ADDINS_PATCHES_APPLIED="yes"
nuget restore -Verbosity detailed -DisableParallelProcessing md-addins.sln
export MSBuildExtensionsPath="$MSBuildExtensionsPathSearchPathsForUnix"
./configure --prefix="${XS_PREFIX}" --md=../monodevelop --profile=linux --disable-release
make V=1 XBUILD=xbuild

rsync -a --progress branding "${XS_DEST}/bin/"
sync_addin Xamarin.Ide bin false
sync_addin Xamarin.Ide/Xamarin.Ide.Identity AddIns/Xamarin.Ide.Identity
sync_addin Xamarin.Ide.Insights AddIns/Xamarin.Ide.Insights
sync_addin Xamarin.TestCloud AddIns/Xamarin.TestCloud
sync_addin Xamarin.Forms.Addin AddIns/Xamarin.Forms.Addin
sync_addin MonoDevelop.MonoDroid AddIns/MonoDevelop.MonoDroid
popd
