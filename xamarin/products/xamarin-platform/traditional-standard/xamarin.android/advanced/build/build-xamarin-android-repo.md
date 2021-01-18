# Build xamarin-android

build-xamarin-android-repo.md

```
# export BRANCH=migration-to-sdk-short-style-projects-02
export BRANCH=migration-to-sdk-short-style-projects-03

git clone --recursive \
    --branch $BRANCH \
    https://github.com/xamarin/xamarin-android.git \
    $BRANCH
```


```
make prepare
make
```