# Outlets and Actions

outlets-and-actions.md

Outlet and Action are ways (or connection/intermediary) view controllers 
(UIViewController) interacts with its subviews UIView. 

Though both of them may look similar during initial days of iOS acquaintance,
 but they serve different purpose:

*   Outlet
    *   ViewController talks to View by using Outlet.
    *   Outlet is @property in UIViewController     
        Property is just a facade for 2 accessor methods (getter and setter methods)
    *   Any UI object - UIView (UILabel, UIButton, UIImage, UIView etc)         
        can have an Outlet connection to ViewController. 
    *   gets and sets value to/from UIView (subview, child view)        
        used as @property in ViewController which means it has getter and setter        
        exposes subview's (child view, UIView) properties whic can be
        *   set-able    
            Update UILabel's or UItex text, Set background image of a UIView etc.
        * get-able      
            like current value of UIStepper, current font size of a NSAttributedString etc.)
    *   IBOutlet is something Xcode puts in Editor to remind Xcode that this￼￼￼ is not just a random 
        @property, it’s an outlet (i.e. a connection to the View).￼￼￼￼The compiler ignores it.
    *   used to change some property of control         
        i.e. text color or text size of a label     
    *   outlet gives some class (typically a view controller) a reference to a child view in
        *   xib
        *   storyboard
*   Action
    *   UIView pass on messages about view to UIViewController by using Action      
        In technical terms UIViewController set itself as Target for any Action in View.     
    *   Action is a Method in UIViewController          
        Whenever something (event) happens to an object (UIbutton touched/tapped) then Action 
        passes on message to UIViewController.  
        Action (or Action method) can do something after receiving the message.     
        Note: Action can be set only by UIControl's child object; means it is not possible to   
        set Action for UILabel, UIView etc.
    *   used to subscribe to (detect) a event (trigger)     
        i.e. when button is pressed.
    *   action provides a method to be called by a control when activated by the user
        usually also a child view on the
        *   xib
        *   storyboard

Outlets and Actions as a concept
and Outlet and their usages. There are few small things (like getting text/title of a button) 
that can be done by both Outlet and Action but otherwise they are very different. 
Keep above points in mind while using one or other.

The .

In other words, the outlet gives the obj-c code access to an object in IB; while the action gives the xib control access to the obj-c code.


You could say they provide 'bridges in opposite directions'

Outlet connection: is to connect a property or instance variable, form the current files owner instance to the xib, when this xib will be deserialized the connection will be made to the files owner object

Outlet action: is adding a target/action to the specified outlet (view) from the xib to the owner class

Outlet collection: is similar to an outlet, but it connects an array of views to a single outlet var

can make an IBOutlet a property, and you need to release anything that you retain, so if the property is set with 'retain' attribute, then you'll need to release it.


An IBOutlet is for hooking up a property to a view when designing your XIB. An IBAction is for hooking a method (action) up to a view when designing your XIB.

An IBOutlet lets you reference the view from your controller code. An IBAction lets the view call a method in your controller code when the user interacts with the view.

You should release or nil IBOutlet properties in dealloc.

Actions are events which the UI sends to the code when something happens. If you click on a button Cocoa will start the code that you have defined by

linking the button to an action of an “interface object”
calling the method of that action in the code
An Outlet is a link from code to UI. If you want to show or hide an UI element, if you want to get the text of a textfield or enable or disable an element (or a hundred other things) you have to define an outlet of that object in the sources and link that outlet through the “interface object” to the UI element. After that you can use the outlet just like any other variable in your coding.
