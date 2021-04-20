# Xamarin Essentials

xamarin-essentials.md

*   https://docs.microsoft.com/en-us/xamarin/essentials/

*   https://github.com/xamarin/Essentials

    *   Accelerometer
  
        *   Retrieve acceleration data of the device in three dimensional space.
    
    *   App Actions – Get and set shortcuts for the application.

        https://docs.microsoft.com/en-us/xamarin/essentials/app-actions 
        
        https://www.youtube.com/watch?v=FX5CUUyXg_Q

    App Information – Find out information about the application.
    App Theme – Detect the current theme requested for the application.
    Barometer – Monitor the barometer for pressure changes.
    Battery – Easily detect battery level, source, and state.
    Clipboard – Quickly and easily set or read text on the clipboard.
    Color Converters – Helper methods for System.Drawing.Color.
    Compass – Monitor compass for changes.
    Connectivity – Check connectivity state and detect changes.
    
    *   Contacts
    
        *   Retrieve information about a contact on the device.

        *   https://docs.microsoft.com/en-us/xamarin/essentials/contacts

        *   https://www.youtube.com/watch?v=LQa_zXuR1PI

    Detect Shake – Detect a shake movement of the device.
    Device Display Information – Get the device's screen metrics and orientation.
    Device Information – Find out about the device with ease.
    Email – Easily send email messages.
    File Picker – Allow user to pick files from the device.

        https://www.youtube.com/watch?v=QPjgXeXDtHU

        https://docs.microsoft.com/en-us/xamarin/essentials/file-picker

        https://github.com/xamarin/xamarin-forms-samples/tree/master/WorkingWithFiles

        https://docs.microsoft.com/en-us/xamarin/xamarin-forms/data-cloud/data/files

        public enum Environment.SpecialFolder

        https://docs.microsoft.com/en-us/dotnet/api/system.environment.specialfolder?view=net-5.0

            ApplicationData

            CommonApplicationData

            LocalApplicationData

            MyDocuments

            Personal

            Android:

Environment.SpecialFolder.Personal & MyDocuments both maps to: /data/data/@PACKAGE_NAME@/files

Environment.SpecialFolder.LocalApplicationData maps to: /data/data/@PACKAGE_NAME@/files/.local/share

store files in any of the above directories based on how they are mapped in the file system. None of the above directories can be accessed by other app, nor user can access them outside the world unless the phone is rooted.

iOS:

Environment.SpecialFolder.Personal, LocalApplicationData & MyDocuments all map to: /Documents

iOS has following directory structure:

/Documents
/Library
/Library/Application Support
/Library/Caches
/tmp

/Documents: Gets visible in iTunes If iTunes sharing is turned on in info.plist in the app. Content can be backed up by iTunes/iCloud.

/Library: Not visible in iTunes. Can be backed up by iTunes/iCloud except Caches directory.

Files/Data which doesn't need to expose to user should be stored in Library directory. Ex. database files. I would go for Library directory for add on security along with encryption (if required).

To get to the Library Path:

Path.Combine(Environment.GetFolderPath (Environment.SpecialFolder.MyDocuments), "..", "Library");

To know more on each Enumeration's mapping with directory Go Here.

Find basics about iOS File System Basics.



    File System Helpers – Easily save files to app data.
    Flashlight – A simple way to turn the flashlight on/off.


    Geocoding – Geocode and reverse geocode addresses and coordinates.

    Geolocation – Retrieve the device's GPS location.


    Gyroscope – Track rotation around the device's three primary axes.
    Haptic Feedback – Control click and long press haptics.
    Launcher – Enables an application to open a URI by the system.
    Magnetometer – Detect device's orientation relative to Earth's magnetic field.
    MainThread – Run code on the application's main thread.
    Maps – Open the maps application to a specific location.
    Media Picker – Allow user to pick or take photos and videos.
    Open Browser – Quickly and easily open a browser to a specific website.
    Orientation Sensor – Retrieve the orientation of the device in three dimensional space.
    Permissions – Check and request permissions from users.
    Phone Dialer – Open the phone dialer.
    Platform Extensions – Helper methods for converting Rect, Size, and Point.
    Preferences – Quickly and easily add persistent preferences.
    
    *   Screenshot 
    
        *   Take a capture of the current display of the application.

        *   https://www.youtube.com/watch?v=o2r4Ym1IExQ

    Secure Storage – Securely store data.
    Share – Send text and website links to other apps.
    SMS – Create an SMS message for sending.
    Text-to-Speech – Vocalize text on the device.
    Unit Converters – Helper methods to convert units.
    Version Tracking – Track the applications version and build numbers.
    Vibrate – Make the device vibrate.
    Web Authenticator - Start web authentication flows and listen for a callback.
