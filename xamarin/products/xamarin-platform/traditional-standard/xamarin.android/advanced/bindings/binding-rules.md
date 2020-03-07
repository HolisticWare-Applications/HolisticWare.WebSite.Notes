# Binding rules

binding-rules.md

## DO NOT

*   change `type` or `return`

    *   usually considered Bad™
    
    *   `type` and `return` value are used to compute the JNI signature for member lookups, 
        and if it changes it could prevent the member from being found. 

## DO 

*   change `managedType` and `managedReturn`

    *   it should not impact the JNI signatures

*   change `visibility` of the `interface`s for package private interaces (`visibility=""`)



