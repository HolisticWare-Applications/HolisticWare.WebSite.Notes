# Android Emulator Network Setup

Consuming REST services from Android Emulator:


address given by Virtual Box vboxnet0

up vote
10
down vote
it works for me by using http://192.168.56.1:8080

to know your IP just use the following command

for (mac and linux) ifconfig vboxnet0
windows command ipconfig vboxnet0
and make sure the port is collect.


Default AVD

https://developer.android.com/studio/run/emulator-networking.html

http://10.0.2.2/

Genymotion

http://10.0.3.2/


the http it's very important and the port it's for default It depends on your server.

Check this url in the browser the smartphone

    adb shell export URI=http://10.0.2.2    // Google AVD
    adb shell export URI=http://10.0.2.2    // Genymotion
    adb shell export PACKAGE=com.app.mypackage
    adb shell am start
        -W -a android.intent.action.VIEW
        -d $URI $PACKAGE

