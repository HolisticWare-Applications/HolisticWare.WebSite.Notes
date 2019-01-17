# Xamarin.Android Bindings for obfuscated classes

Jon Douglas	[21:20]  

is there a way to create bindings for obfuscated classes? My guess here is no, 
but thought I’d check.

depends on the JDK and what method they are using (jar2xml vs class-parse). 
Generally speaking obfuscated classes will be out of reach. Could potentially 
try: 

https://developer.xamarin.com/guides/android/advanced_topics/binding-a-java-library/customizing-bindings/java-bindings-metadata/#obfuscated

Generally the generator will attempt to parse everything it can reach and will 
let you know what it's not reaching. Turn up your build output to diagnostic.

jar2xml uses java reflection which will probably not parse obfuscation.

class-parse uses bytecode engineering and might do the same thing (I've seen it 
do much better than jar2xml using JDK 1.8)
