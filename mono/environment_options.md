


	
This can be done by changing the state of Monos execution environment on the 
device; which is just a set of environment variables that alters Monos behaviour 
(be it garbage collection, logging etc). In this case, to alter the logging 
behavior we need to modify the values stored in the environment variables 
MONO_LOG_LEVEL and MONO_LOG_MASK.

Xamarin.Android offers 2 mechanisms developers can use to change the execution 
environment:

1. Using adb shell setprop debug.mono.env. This can be done as a post build action.
2. Using an environment build file to change the execution environment state 
per project.

I prefer to use method 2 as it's easier to edit a text file than changing build 
actions. Do this using the steps outlined below.

Adding An Environment File
Add a plain text file called environment.txt to the root path of your 
Xamarin.Android project. enter image description here

Right click on environment.txt and set its build action to AndroidEnvironment.

The environment file is series of key=value pairs seperated by newlines. 
For logging, we can set the following variables:

MONO_LOG_LEVEL

debug
info
message
warning
critical
error

MONO_LOG_MASK

asm
dll
cfg
all
type
gc