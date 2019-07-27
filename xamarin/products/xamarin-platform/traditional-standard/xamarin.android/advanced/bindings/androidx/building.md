
git clone -b AndroidX https://github.com/xamarin/AndroidSupportComponents.git
cd AndroidSupportComponents/
curl -Lsfo build.sh https://cakebuild.net/download/bootstrapper/osx
sh ./build.sh --target=clean && sh ./build.sh --target=binderate && sh ./build.sh --target=libs