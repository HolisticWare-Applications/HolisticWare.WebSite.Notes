# GTK on Windows

gtk-on-windows.md



## `System.DllNotFoundException`

### Problem

```
System.DllNotFoundException
  HResult=0x80131524
  Message=Unable to load DLL 'libglib-2.0-0.dll': The specified module could not be found. 
  (Exception from HRESULT: 0x8007007E)
  Source=glib-sharp
  StackTrace:
   at GLib.Marshaller.g_utf16_to_utf8(Char* native_str, IntPtr len, IntPtr items_read, IntPtr items_written, IntPtr& error)
   at GLib.Marshaller.StringToPtrGStrdup(String str)
   at GLib.Global.set_ProgramName(String value)
   at Gtk.Application.SetPrgname()
   at Gtk.Application.Init()
   at Ph4ct3x.App.XamarinForms.GTK.MainClass.Main(String[] args) in D:\Ph4ct3x\gl\Ph4ct3x\samples\Clients\mobile\Ph4ct3x.App.XamarinForms.GTK\Program.cs:line 10

```

### Workaround / [Re]Solution

*   reboot needed after GTKSharp installation
