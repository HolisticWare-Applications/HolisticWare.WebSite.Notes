# Type forwarding

type-forwarding.md



1.  move the source from original assembly to target/destination

    *   original
    
        *   `AndroidX.AppCompat.Resources.dll`

        *   `androidx.appcompat.appcompat-resources-typeforwarders.csproj`

            *   new project 

            *   old/original assembly

    *   new target/destination: 
        
        *   `AndroidX.AppCompat.AppCompatResources.dll` 
    
        *   `androidx.appcompat.appcompat-resources.csproj`

            *   old project (defined by artifact name)

            *   new target/destination assembly

2.  in the old original assembly add 

    ```
    [assembly:TypeForwardedToAttribute(typeof(Example))]
    ```

3.  reference new assembly from the old assembly

4.  build old original assembly 