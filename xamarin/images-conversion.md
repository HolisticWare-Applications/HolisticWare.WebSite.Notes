# Image optimizers

images.md

1. iOS - Application, Spotlight, and Settings Icons 

2. iOS iTunes 512x512  1024x1024



https://dzone.com/articles/a-faster-way-to-add-image-assets-to-your-xamarinio

1.  Right click on the project in Solution Explorer and select 'Open Folder in File Explorer' 
    and find the 'Assets' folder.

2.  Create a new folder in this format: '[yourassetname].imageset'.

3.  Add your image to the folder.

4.  Create a new file with the name Contents.json

```
{
  "images": [
    {
      "scale": "1x",
      "idiom": "universal",
      "filename": "[yourimage].png"
    },
    {
      "scale": "2x",
      "idiom": "universal",
      "filename": "[yourimage].png"
    },
    {
      "scale": "3x",
      "idiom": "universal",
      "filename": "[yourimage].png"
    },
    {
      "idiom": "universal"
    }
  ],
  "properties": {
    "template-rendering-intent": ""
  },
  "info": {
    "version": 1,
    "author": ""
  }
}```

Find the ItemGroup with the Assets.
Inside the ItemGroup, add your imageset with these two entries:

```
<ImageAsset Include="Assets.xcassets\[yourassetname].imageset\[yourimage].png">
  <Visible>false</Visible>
</ImageAsset>
<ImageAsset Include="Assets.xcassets\[yourassetname].imageset\Contents.json">
  <Visible>false</Visible>
</ImageAsset>
```


```
iPhone-6-n-7-plus-ios-9-n-10-application-icon-3x,180,180
iPhone-6-n-7-plus-ios-9-n-10-spotlight-3x,180,180
iPhone-6-n-7-plus-ios-9-n-10-settings-3x,180,180

iPhone-ios-7-n-8-application-icon-1x,60,60
iPhone-ios-7-n-8-application-icon-2x,120,120
iPhone-ios-7-n-8-spotlight-1x,40,40
iPhone-ios-7-n-8-spotlight-2x,80,80

iPhone-ios-5-n-6-application-icon-1x,57,57
iPhone-ios-5-n-6-application-icon-2x,114,114
iPhone-ios-5-n-6-spotlight-1x,29,29
iPhone-ios-5-n-6-spotlight-2x,58,58
iPhone-ios-5-n-6-settings-1x,29,29
iPhone-ios-5-n-6-settings-2x,58,58
```

## Compression

*   libjpeg-turbo

    *   https://www.libjpeg-turbo.org/

    *   https://sourceforge.net/projects/libjpeg-turbo/files/

    *   https://github.com/Sergey-Terekhin/libjpeg-turbo-net/tree/master/libjpeg-turbo-net