# CIL Common Intermeditate Optimizations

cil-common-intermediate-language-optimizations.md

*   Cilica

    *   https://github.com/hez2010/Cilica

    *  https://hez2010.github.io/CilicaLab/

    *   only methods and classes annotated with 

        ```csharp
        [Cilica.Attributes.Optimize]
        ```

        will be transformed.

    *   This can be changed by setting the CilicaAllMethods project property to true:

        ```xml
        <CilicaAllMethods>true</CilicaAllMethods>
        ```
    
        ```xml
        <SelfContained>true</SelfContained>
        <CilicaAllAssemblies>true</CilicaAllAssemblies>
        ```
    
*   DistIL

    *   https://github.com/dubiousconst282/DistIL

    *   Post-build IL optimizer and intermediate representation for .NET programs (experimental).
    

*   https://www.reddit.com/r/csharp/comments/1xpzgnb/a_general_il_optimizer_for_net_cilica/
