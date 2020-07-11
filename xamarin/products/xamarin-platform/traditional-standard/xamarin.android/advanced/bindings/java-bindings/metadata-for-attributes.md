# Metadata for Attributes

metadata-for-attributes.md

feature into the android binding that will allow to set [EditorBrowsable] in bindings:

```
<attr 
    path="/api/package[@name='mono.android.app']/class[@name='IntentService']/constructor[count(parameter) = 0]" 
    name="customAttributes"
    >
    [Preserve(Conditional = true)]
</attr>

any arbitrary attribute syntax there and it will emit it

