# Generator Issues

generator-issues.md

```
2 out of 6 similar errors:
./u202008/generated/com.google.android.material.material/obj/Debug/monoandroid90/generated/src/Google.Android.Material.Slider.RangeSlider.cs(31,31): 
Error CS0115: 'RangeSlider.SetEnabled(bool)': no suitable method found to override 
(CS0115) (com.google.android.material.material)
./u202008/generated/com.google.android.material.material/obj/Debug/monoandroid90/generated/src/Google.Android.Material.Slider.Slider.cs(31,31): 
Error CS0115: 'Slider.SetEnabled(bool)': no suitable method found to override 
(CS0115) (com.google.android.material.material)

both Slider and RangeSlider derive from global::Android.Views.View which has property Enabled, so I tried enforcing property generation via:
  <attr    path="/api/package[@name='com.google.android.material.slider']/class[@name='Slider']/method[@name='setEnabled' and count(parameter)=1 and parameter[1][@type='boolean']]"
    name="propertyName"></attr>  

but it does not have effect.


@moljac: please file a generator bug. :slight_smile:
likely reason that your workaround doesn't work is because only the setter was overridden, not both the getter & setter, so it's not detected as a possible property.
next Q: why is it trying to override in the first place?
@moljac: for a workaround, i'd suggest renaming it to _SetEnabled(bool), and then add a partial class which overrides View.Enabled: 
public override bool Enabled {
  get {return base.Enabled;}
  set {_SetEnabled(value);}
}



jpobstToday at 5:32 PM
that seems risky, there are several places where we do a switch on visibility, and public new isn't going to match anything
moljacToday at 5:33 PM
OK. Thanks. Good to know
jpobstToday at 5:34 PM
we might want to consider setting new with this: https://github.com/xamarin/java.interop/issues/681
```


```
  <attr
    path="/api/package[@name='com.google.android.material.slider']/class[@name='Slider']/method[@name='setEnabled' and count(parameter)=1 and parameter[1][@type='boolean']]"
    name="visibility"
    >
    public new
  </attr>  
```

```
jpobstToday at 5:32 PM
that seems risky, there are several places where we do a switch on visibility, and public new isn't going to match anything
```
