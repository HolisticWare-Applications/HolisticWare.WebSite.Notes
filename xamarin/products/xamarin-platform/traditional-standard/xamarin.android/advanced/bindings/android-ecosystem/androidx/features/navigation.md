# AndroidX Navigation

navigation.md

androidx-navigation.md

*   https://android-developers.googleblog.com/2019/03/android-jetpack-navigation-stable.html

*   Navigation component 

    *   suite for in-app navigation consisted of 
    
        *   libraries, 
        
        *   tooling and 
        
        *   guidance 

    *   centralizes all of the navigation information of the app in a navigation graph, 

    *   provides a robust framework for implementing everything 
    
        *   from simple button clicks 
        
        *   to complex  navigation UI patterns.

    *   https://developer.android.com/guide/navigation/navigation-getting-started

        *   https://www.youtube.com/watch?v=Y0Cs2MQxyIs

    *   Automatic handling of fragment transactions

    *   Correctly handling up and back

    *   Default behaviors for animations and transitions

    *   Deep linking, including proper backstack generation

    *   Implementing common patterns like navigation drawers and bottom nav with little 
        additional work using the Navigation UI library 
        
        *   http://bit.ly/2EWYtoV

        *   https://developer.android.com/guide/navigation/navigation-ui#java

        *   Type safety when passing information while navigating using the Safe Args plugin 
        
            *   http://bit.ly/2VR7kPM

        *   Safe Args

            *   https://developer.android.com/guide/navigation/navigation-pass-data#Safe-args

*   The Navigation Component Documentation 

    *   http://bit.ly/2TJuhao

    *   https://developer.android.com/guide/navigation/navigation-getting-started

*   Navigation Codelab 

    *   http://bit.ly/2TSa9mB

    *   https://codelabs.developers.google.com/codelabs/android-navigation/

*   Android Studio 3.3 

    *   includes the Navigation Editor, 
    
        *   visuals your navigation graph. 

*   Other  features and benefits include:

    *   Automatic handling of fragment transactions

    *   Correctly handling up and back

    *   Default behaviors for animations and transitions

    *   Deep linking, including proper backstack generation

    *   Implementing common patterns like navigation drawers and bottom nav with little additional 
        work using the Navigation UI library → 
        
        *   http://bit.ly/2EWYtoV

    *   Type safety when passing information while navigating using the 
    
        *   Safe Args plugin → http://bit.ly/2VR7kPM

## Links /  References

*   The Navigation Component Documentation → http://bit.ly/2TJuhao

*   Navigation Codelab → http://bit.ly/2TSa9mB

*   Single Activity: Why, When, and How at Android Dev Summit '18 → http://bit.ly/2u5OoRC

*   Android Studio 3.3 Blogpost → http://bit.ly/2VWxJMc

*   Base Navigation Reference Documentation → http://bit.ly/2EY0Mbn 

*   Fragment navigation Reference Documentation → http://bit.ly/2UB0ltY

*   Navigation UI Reference Documentation → http://bit.ly/2FbXKBL

*   Source code (part of AOSP) → http://bit.ly/2UBbHOG

*   *Navigation Editor Issue Tracker → http://bit.ly/2VWvrws

*   Navigation Component Issue Tracker (Non Navigation Editor) → http://bit.ly/2CjXazR





*   Single Activity: Why, When, and How at Android Dev Summit '18 → http://bit.ly/2u5OoRC

*   Android Studio 3.3 Blogpost → http://bit.ly/2VWxJMc

*   Base Navigation Reference Documentation → http://bit.ly/2EY0Mbn 

*   Fragment navigation Reference Documentation → http://bit.ly/2UB0ltY

*   Navigation UI Reference Documentation → http://bit.ly/2FbXKBL

*   Source code (part of AOSP) → http://bit.ly/2UBbHOG

*   Navigation Editor Issue Tracker → http://bit.ly/2VWvrws

*   Navigation Component Issue Tracker (Non Navigation Editor) → http://bit.ly/2CjXazR

## CodeLab

Overview of Navigation
The Navigation Component consists of three key parts, working together in harmony. They are:

Navigation Graph (New XML resource) - This is a resource that contains all navigation-related information in 
one centralized location. This includes all the places in your app, known as destinations, and possible paths a user could take through your app.
NavHostFragment (Layout XML view) - This is a special widget you add to your layout. It displays different destinations from your Navigation Graph.
NavController (Kotlin/Java object) - This is an object that keeps track of the current position within the navigation graph. It orchestrates swapping destination content in the NavHostFragment as you move through a navigation graph.
When you navigate, you'll use the NavController object, telling it where you want to go or what path you want to take in your Navigation Graph. The NavController will then show the appropriate destination in the NavHostFragment.

That's the basic idea. Let's see what this looks like in practice, starting with the new Navigation Graph resource.

Destinations
The Navigation Component introduces the concept of a destination. A destination is any place you can navigate to in your app, usually a fragment or an activity. These are supported out of the box, but you can also make your own custom destination types if needed.

Navigation Graph
A navigation graph is a new resource type that defines all the possible paths a user can take through an app. It shows visually all the destinations that can be reached from a given destination. Android Studio displays the graph in its Navigation Editor. Here's part of the starting navigation graph you'll create for your app:


## Xamarin

*   https://forums.xamarin.com/discussion/184628/how-to-use-findnavcontroller-in-xamarin-android-using-androidx#latest

*   https://github.com/xamarin/AndroidX/issues/148

*   



