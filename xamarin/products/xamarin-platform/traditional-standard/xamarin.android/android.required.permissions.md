# Android [Required] Permissions

Android permissions

	NOTE: 
		Some permissions are tunred on by default in Xamarin Android.
		Internet - needed explicitly for release

## Project Options

Project +/ Options +/ Android Application +/ Required Permissions

## c# code

c# attribute gives advantage of intellisense

### Internet

	[assembly: UsesPermission(Android.Manifest.Permission.Internet)]	

### USB

### Bluetooth

