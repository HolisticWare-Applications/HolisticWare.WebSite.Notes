# Partial Methods

partial-methods.md 

*   must return void (if they had return types, an implementation would be required)

*   can have ref parameters, but not out parameters (if no implementation is provided, 
    the ref parameter is unmodified)

*   Partial methods are inherently private in scope.

*   can be static, and can be generic.

*   Delegates can only refer to implementations of static methods.


https://www.wintellect.com/under-the-hood-with-windows-universal-projects/