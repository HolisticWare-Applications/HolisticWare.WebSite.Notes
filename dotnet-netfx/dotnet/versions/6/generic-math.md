# Generic.Math

generic-math.md

*   requirements

    *   enable language preview features

    *   add

        ```
        <PackageReference Include="System.Runtime.Experimental" Version="*-*" />
        ```


*   https://stackoverflow.com/questions/63694/creating-a-math-library-using-generics-in-c-sharp

*   https://stackoverflow.com/questions/10951392/implementing-arithmetic-in-generics

*   http://www.shujaat.net/2012/05/c-generics-arithmetic-operators.html


*   https://devblogs.microsoft.com/dotnet/preview-features-in-net-6-generic-math/

    *   https://devblogs.microsoft.com/dotnet/preview-features-in-net-6-generic-math/#generic-math

*   https://www.thomasbogholm.net/2021/12/09/c11pre-static-abstract-interface-members/

*   https://dev.to/entomy/real-traits-in-c-4fpk

*   code

    *   https://github.com/dotnet/runtime/tree/00c169230672b48ff2c77df9ac18aeae0a55ee6a/src/libraries/System.Private.CoreLib/src

    *   https://github.com/dotnet/runtime/tree/00c169230672b48ff2c77df9ac18aeae0a55ee6a/src/libraries/System.Private.CoreLib/src/System

    *   https://github.com/dotnet/runtime/blob/af4efb1936b407ca5f4576e81484cf5687b79a26/src/libraries/System.Private.CoreLib/src/System/UInt32.cs

    *   https://github.com/dotnet/runtime/blob/af4efb1936b407ca5f4576e81484cf5687b79a26/src/libraries/System.Private.CoreLib/src/System/Int64.cs

    *   https://github.com/dotnet/runtime/blob/af4efb1936b407ca5f4576e81484cf5687b79a26/src/libraries/System.Private.CoreLib/src/System/INumber.cs

    *   https://github.com/dotnet/runtime/blob/af4efb1936b407ca5f4576e81484cf5687b79a26/src/libraries/System.Private.CoreLib/src/System/Double.cs

    *   https://github.com/dotnet/runtime/blob/7691aa88ef3e7837e903ce95389e38a112a981c9/src/libraries/System.Runtime/tests/System/GenericMathHelpers.cs

*   meetings

    *   https://github.com/dotnet/csharplang/blob/c117a50a1488d365a790d21c79b428ba5a9514b3/meetings/2021/LDM-2021-09-13.md

    *   https://github.com/dotnet/csharplang/blob/b1ada74e758a6e3eeee07c7518170a16b5772105/meetings/2021/LDM-2021-12-01.md

*   docs

    *   https://github.com/dotnet/designs/blob/8da644d619d1a68c04c3c2bebfe170f53b9f1f8d/accepted/2021/preview-features/preview-features.md

    *   C# Language Design Meeting for November 10th, 2021

        *   https://github.com/dotnet/csharplang/blob/9586b1e3388e367d62c2d3314306c4ed6920d873/meetings/2021/LDM-2021-11-10.md

    *   Statics in Interfaces

        *   https://github.com/dotnet/designs/blob/3181db8296e2bdbeb0df97e44909de09eb133527/accepted/2021/statics-in-interfaces/README.md

    *   default interface methods

        *   https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-8.0/default-interface-methods

    *   Static abstract members in interfaces
    
        *   https://github.com/dotnet/csharplang/blob/main/proposals/static-abstracts-in-interfaces.md

    *   Static Interface Methods

        *   https://github.com/dotnet/runtime/blob/main/docs/design/specs/Ecma-335-Augments.md#static-interface-methods

    *   Force a generic type to support numeric operations

        *   https://github.com/dotnet/roslyn/issues/3391

*   diverse

    *   https://github.com/ChrisLomont/LomontSharp/blob/3a7d1b113f5a83ce287ce4bf7a1f821c9df873b0/LomontSharp/Numerical/Vector.cs

    *   https://github.com/thomaslevesque/blog/blob/cb51c88afd48d3b675ff772551432a4f6a1fd167/content/posts/2021-11-04-a-quick-review-of-csharp-10-new-language-features/index.md

*   https://github.com/dotnet/designs/pull/205

*   https://dev.to/entomy/generics-systems-83n

*   https://github.com/dotnet/csharplang/issues/4436

*   https://dunnhq.com/posts/2021/generic-math/

*   https://pvs-studio.com/en/blog/posts/csharp/0878/

*   http://core.loyc.net/math/maths

*   https://www.extremeoptimization.com/Documentation/Mathematics/Generic-Arithmetic/Using-Generic-Arithmetic.aspx

*   https://www.reddit.com/r/csharp/comments/m2rtf9/c10_proposal_generic_math_static_abstract_members/

*   https://www.reddit.com/r/dotnet/comments/p20jlc/preview_features_in_net_6_generic_math/

*   https://nodogmapodcast.bryanhogan.net/157-mads-torgersen-c-10-part-1/

## Diverse 

*   Generic operators

    *   https://jonskeet.uk/csharp/genericoperators.html

*   http://www.shujaat.net/2012/05/c-generics-arithmetic-operators.html

*   libraries

    *   https://numerics.mathdotnet.com/

    *   https://www.openhub.net/p/matrixMath/similar

*   https://github.com/HelloKitty/Generic.Math

*   https://jonskeet.uk/csharp/miscutil/usage/genericoperators.html

*   https://stackoverflow.com/questions/30580567/how-to-perform-math-operations-with-generic-variables

*   http://www.shujaat.net/2012/05/c-generics-arithmetic-operators.html

*   http://tomasp.net/blog/fsharp-generic-numeric.aspx/


### 20220105


*   https://github.com/dotnet/docs/pull/27503

*   https://github.com/dotnet/designs/pull/205

*   Statics in Interfaces

    *   https://github.com/dotnet/designs/blob/3181db8296e2bdbeb0df97e44909de09eb133527/accepted/2021/statics-in-interfaces/README.md

*   Self constraint for generic type parameters

    *   https://github.com/dotnet/csharplang/blob/711b9406f07d1fc43d2825df4c0284c9614b7821/proposals/self-constraint.md


https://github.com/brucificus/AdventOfCode/blob/a30d9826826d3e1951dc44d8adbf31f83aefe70c/src/Y2021/Shared/GenericMathEnumerableExtensions.cs

https://github.com/rstropek/Samples/blob/96d03de93b4cab889f47b41ea23e682cdd135373/CSharp10/GenericMath/GenericMath.cs

https://github.com/WaifuShork/Common/blob/94e0976d52c55af81951538d59706bc6b4a9213e/src/WaifuShork.Common/Math/Generic/GenericOperators.cs

https://github.com/ufcpp/UfcppSample/blob/7cd41fbaa77360a66bfe7a542ea9c6faddb6e06e/Demo/2021/Csharp10/StaticAbstract/GenericMath/Algebra/GaloisField.cs

https://github.com/NikolayIT/CSharp-New-Features/blob/be2ea33ef6cebf1995fc8bd17c85d01c8c787f4c/CSharp-10-New-Features/StaticAbstractInInterfaces/OneDigitNumber.cs

https://github.com/asc-community/AngouriMath/blob/f457fcf60756a0bb60a18ebe683085ed12e27b9b/Sources/AngouriMath/AngouriMath/Core/Entity/GenericMath/IClosedArithmetics.cs


https://github.com/Tavenem/HugeNumber/blob/a2e61e4678058c27ee36fc81c7b872fe8a29ba7f/src/HugeNumber.cs



operator == (Equals)

    *   https://github.com/angularsen/UnitsNet/pull/984


https://github.com/asc-community/AngouriMath/pull/509








