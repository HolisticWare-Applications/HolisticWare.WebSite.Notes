# Parsing Text

https://tomassetti.me/parsing-in-csharp/#parseTree


## Compilers

*   https://www.youtube.com/playlist?list=PLRAdsfhKI4OWNOSfS7EUu5GRAVmze1t2y

## Parser Combinators

*   What the heck is a parser-combinator? 

    *   https://news.ycombinator.com/item?id=14600079

*   https://www.scribd.com/document/453395677/Comparison-of-parser-generators

## Monadic Parsers

*   https://github.com/moljac/Samples.CSharp/blob/master/docs/monadic-parser-combinators.md

*   https://news.ycombinator.com/item?id=14600079

*   http://codebetter.com/matthewpodwysocki/2008/10/13/functional-c-linq-as-a-monad/

*   https://adamgordonbell.com/posts/2010-11-20-parser-combinators-csharp.html

## Lexers and Parsers/YACCers

*   https://github.com/b3b00/csly/

    *   TODO: replace StringBuilder with 

*   https://openhub.net/p/CSharpLexYacc

*   https://github.com/picoe/Eto.Parse

*   https://github.com/IronyProject/Irony

*   https://www.reddit.com/r/csharp/comments/17nufvf/are_there_any_kind_of_libraries_that_allow_you_to/

## Code Samples    

From simple to more complex

*   Phone Number 

    *   https://visualstudiomagazine.com/Articles/2012/01/01/Working-with-Parser-Combinators.aspx

*   HTTP header parsing

    *   https://www.thomaslevesque.com/2017/02/23/easy-text-parsing-in-c-with-sprache/

*   JSON

    *   https://github.com/IanWold/SpracheJSON

*   Markdown

    *   https://github.com/IanWold/SpracheDown

## Repos

*   Query

    *   https://github.com/search?l=C%23&q=sprache&type=Repositories

Result 20201018

*   ordered by complexity

    *   Sprache

        *   https://github.com/rossipedia/toml-net/blob/master/toml-net/Parser/TomlGrammar.cs

        *   https://github.com/edamtoft/Calculator

        *   https://github.com/yallie/Sprache.Calc

        *   https://github.com/DamianReeves/CommandLineParser.Sprache

        *   https://github.com/dtarjeft/TruthTable

        *   https://github.com/allisterb/SemverSharp

        *   https://github.com/IanWold/SpracheJSON

        *   https://github.com/IanWold/SpracheDown

        *   https://github.com/yuchiki/YuchiKaml

        *   https://github.com/pmarflee/sprache-stringcalculator

        *   https://github.com/wgross/ODataParser

        *   https://github.com/tintoy/msbuild-expression-parser

Result 20191024

*   https://github.com/sprache/Sprache

*   https://github.com/yallie/Sprache.Calc

*   https://github.com/IanWold/SpracheJSON

*   https://github.com/IanWold/SpracheDown

*   https://github.com/mjul/SpracheParserCombinatorLab

*   https://github.com/tristanmenzel/sprachtml

*   https://github.com/khaale/SprachePlayground/

    *   https://github.com/khaale/SprachePlayground/blob/master/SprachePlayground/SimpleGrammarTests.cs

*   https://github.com/ousttrue/SpracheSample

*   https://github.com/anpv/SpracheTest

*   https://github.com/zgngr/sprachePlayground

*   https://github.com/csharp-playground/sprache

*   https://github.com/dtarjeft/SpracheAlgebraParser

*   https://github.com/danielkornev/sprache

*   https://github.com/jermdavis/SpracheBlog

*   https://github.com/yallie/SpracheOpenCover

*   https://github.com/unosviluppatore/code-generation-roslyn

*   https://github.com/yuchiki/YuchiKaml

*   https://github.com/pmarflee/sprache-stringcalculator

*   https://github.com/iSynaptic/Sprache.Playground

*   https://github.com/BurlakovNick/sprache-examples

*   https://github.com/gvickh/CSharp.Sprache.Calc

*   https://github.com/KennethRamsey/Sprache-XML-Parser/blob/master/Xml%20Sprache.linq

*   https://github.com/DamianReeves/CommandLineParser.Sprache

*   https://github.com/dtarjeft/TruthTable

*   https://github.com/edamtoft/Calculator

*   https://github.com/wgross/ODataParser

*   https://github.com/wgross/ODataParser

*   https://github.com/chismar/ParadoxDevelopmentStudioScriptingLanguageParser

*   https://github.com/tintoy/msbuild-expression-parser



Other repos

*   https://github.com/FH-SE-Master/Formale-Sprachen-Compiler-und-Werkzeugbau

## Grammars in []BNF

http://www.antlr3.org/grammar/list.html


*   c#

    *   https://github.com/ChristianWulf/CSharpGrammar/tree/master/grammars

        *   lexer

            *   https://github.com/ChristianWulf/CSharpGrammar/blob/master/grammars/CSharp4Lexer.g
            
        *   syntax

            https://github.com/ChristianWulf/CSharpGrammar/blob/master/grammars/CSharp4.g

    *   https://github.com/Apophenic/csharp-grammar/blob/master/grammar/CSharp.bnf

    *   https://stackoverflow.com/questions/23456868/c-sharp-5-0-ebnf-grammar

    *   http://www.externsoft.ch/download/csharp.html    

    *   http://www.cs.vu.nl/grammarware/browsable/CSharp/

    *   http://www.antlr3.org/grammar/1127720913326/tkCSharp.g

    *   http://www.antlr3.org/grammar/1067486869200/csharp.g


*   java

    *   https://users-cs.au.dk/amoeller/dRegAut/JavaBNF.html

    *   http://cui.unige.ch/isi/bnf/JAVA/BNFindex.html

    *   http://openjdk.java.net/projects/compiler-grammar/antlrworks/Java.g

    *   java *.class file grammar

        class file and jar parser (javap)

        *   http://www.antlr3.org/grammar/1147639104266/classfile.tar.gz

*   swift

    *   https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/zzSummaryOfTheGrammar.html

    *   https://rheinard.org/2015/12/06/swift-grammar-its-a-language-thing/

*   objective-c

    *   https://github.com/itod/parsekit/blob/master/res/objc.grammar

    *   https://github.com/iamdc/Objective-C-Grammar/blob/master/ObjC.Grm

    *   http://www.antlr3.org/grammar/1212699960054/ObjectiveC2ansi.g


*   javascript

    *   https://github.com/itod/parsekit/blob/master/res/javascript.grammar

    *   http://www.antlr3.org/grammar/1153976512034/ecmascriptA3.g


*   JSON

    *   https://github.com/itod/parsekit/blob/master/res/json-old.grammar

    *   https://github.com/itod/parsekit/blob/master/res/json.grammar

*   XML

    *   https://github.com/itod/parsekit/blob/master/res/xml.grammar

*   html

    *   https://github.com/itod/parsekit/blob/master/res/html.grammar

*   css

    *   https://github.com/itod/parsekit/blob/master/res/css.grammar

*   c

    *   https://github.com/itod/parsekit/blob/master/res/c.grammar

## Diverse
    
*   https://stackoverflow.com/questions/7377344/how-to-write-a-parser-in-c

*   https://tomassetti.me/ebnf/

*   https://nblumhardt.com/2010/01/building-an-external-dsl-in-c/

*   https://nblumhardt.com/2010/01/sprache-c/

*   https://tomassetti.me/create-simple-parser-c-sprache/

*   https://github.com/sprache/Sprache/issues/96

*   https://dzone.com/articles/create-a-simple-parser-in-c-with-sprache

*   https://www.ianwold.com/blog/2016/1/22/an-introduction-to-sprache

*   https://adrianhesketh.com/2014/08/14/writing-parsers-using-sprache/

*   https://www.codewise-llc.com/blog/2015/8/13/parsing-enum-values-with-sprache

*   https://stackoverflow.com/questions/32699833/using-sprache-to-parse-enums-from-identifiers

*   http://blog.spinthemoose.com/2013/05/05/parsing-vs-solution-files-with-sprache/

*   https://www.codeproject.com/Articles/795056/Sprache-Calc-building-yet-another-expression-evalu

*   http://mikehadlow.blogspot.hr/2012/09/parsing-connection-string-with-sprache.html

*   http://mikehadlow.blogspot.hr/2012/08/sprache-monadic-parser-for-c.html

*   http://blog.spinthemoose.com/2013/05/18/more-sprache-goodness/

*   https://dzone.com/articles/sprache-%E2%80%93-monadic-parser-c

*   http://developers-club.com/posts/228037/

*   https://tomassetti.me/parsing-in-csharp/#parseTree















## Code Samples    

From simple to more complex

*   Phone Number 

    *   https://visualstudiomagazine.com/Articles/2012/01/01/Working-with-Parser-Combinators.aspx

*   HTTP header parsing

    *   https://www.thomaslevesque.com/2017/02/23/easy-text-parsing-in-c-with-sprache/

*   JSON

    *   https://github.com/IanWold/SpracheJSON

*   Markdown

    *   https://github.com/IanWold/SpracheDown

*   JSON

    *   https://github.com/yallie/Sprache.Calc


## Grammars in []BNF


*   http://bnfc.digitalgrammars.com/

*   https://github.com/BNFC/bnfc/blob/master/examples/LBNF/LBNF.cf

*   http://www.antlr3.org/grammar/list.html


*   c#

    *   https://github.com/ChristianWulf/CSharpGrammar/tree/master/grammars

        *   lexer

            *   https://github.com/ChristianWulf/CSharpGrammar/blob/master/grammars/CSharp4Lexer.g
            
        *   syntax

            https://github.com/ChristianWulf/CSharpGrammar/blob/master/grammars/CSharp4.g

    *   https://github.com/Apophenic/csharp-grammar/blob/master/grammar/CSharp.bnf

    *   https://stackoverflow.com/questions/23456868/c-sharp-5-0-ebnf-grammar

    *   http://www.externsoft.ch/download/csharp.html    

    *   http://www.cs.vu.nl/grammarware/browsable/CSharp/

    *   http://www.antlr3.org/grammar/1127720913326/tkCSharp.g

    *   http://www.antlr3.org/grammar/1067486869200/csharp.g


*   java

    *   https://users-cs.au.dk/amoeller/dRegAut/JavaBNF.html

    *   http://cui.unige.ch/isi/bnf/JAVA/BNFindex.html

    *   http://openjdk.java.net/projects/compiler-grammar/antlrworks/Java.g

    *   http://people.cs.uchicago.edu/~mrainey/java.cf
	
	*	http://www.cse.chalmers.se/edu/year/2011/course/TIN321/lectures/bnfc-tutorial.html#toc1
		
	*	java *.class file grammar

        class file and jar parser (javap)

        *   http://www.antlr3.org/grammar/1147639104266/classfile.tar.gz

*   swift

    *   https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/zzSummaryOfTheGrammar.html

    *   https://rheinard.org/2015/12/06/swift-grammar-its-a-language-thing/

*   objective-c

    *   https://github.com/itod/parsekit/blob/master/res/objc.grammar

    *   https://github.com/iamdc/Objective-C-Grammar/blob/master/ObjC.Grm

    *   http://www.antlr3.org/grammar/1212699960054/ObjectiveC2ansi.g


*   javascript

    *   https://github.com/itod/parsekit/blob/master/res/javascript.grammar

    *   http://www.antlr3.org/grammar/1153976512034/ecmascriptA3.g


*   JSON

    *   https://github.com/itod/parsekit/blob/master/res/json-old.grammar

    *   https://github.com/itod/parsekit/blob/master/res/json.grammar

*   XML

    *   https://github.com/itod/parsekit/blob/master/res/xml.grammar

*   html

    *   https://github.com/itod/parsekit/blob/master/res/html.grammar

*   css

    *   https://github.com/itod/parsekit/blob/master/res/css.grammar

*   c

    *   https://github.com/itod/parsekit/blob/master/res/c.grammar
	
	*	https://github.com/BNFC/bnfc/blob/master/examples/C/C.cf
	

## Diverse
    
*   https://tyrrrz.me/blog/monadic-parser-combinators

    *   JSON

        *   https://github.com/Tyrrrz/DotNetFest2019

    *   other

        *   HTML

            *   https://github.com/Tyrrrz/LtGt/tree/csharp-sprache

        *   Markdown

            *   https://github.com/Tyrrrz/DiscordChatExporter/blob/master/DiscordChatExporter.Core.Markdown/MarkdownParser.cs


*   https://tomassetti.me/parsing-in-csharp/

*   https://tomassetti.me/ebnf/

*   https://tomassetti.me/create-simple-parser-c-sprache/

*   https://stackoverflow.com/questions/7377344/how-to-write-a-parser-in-c


*   https://nblumhardt.com/2010/01/building-an-external-dsl-in-c/

*   https://nblumhardt.com/2010/01/sprache-c/



    https://github.com/sprache/Sprache/issues/96

    https://dzone.com/articles/create-a-simple-parser-in-c-with-sprache

    https://www.ianwold.com/blog/2016/1/22/an-introduction-to-sprache

    https://adrianhesketh.com/2014/08/14/writing-parsers-using-sprache/

    https://www.codewise-llc.com/blog/2015/8/13/parsing-enum-values-with-sprache

    https://stackoverflow.com/questions/32699833/using-sprache-to-parse-enums-from-identifiers

    http://blog.spinthemoose.com/2013/05/05/parsing-vs-solution-files-with-sprache/

    https://www.codeproject.com/Articles/795056/Sprache-Calc-building-yet-another-expression-evalu

    http://mikehadlow.blogspot.hr/2012/09/parsing-connection-string-with-sprache.html

    http://mikehadlow.blogspot.hr/2012/08/sprache-monadic-parser-for-c.html

    http://blog.spinthemoose.com/2013/05/18/more-sprache-goodness/

    https://dzone.com/articles/sprache-%E2%80%93-monadic-parser-c

    http://developers-club.com/posts/228037/

    https://tomassetti.me/parsing-in-csharp/#parseTree

>>>>>>> ead1b5efadcff7c4e6485a1d956c28dfa4f10c2c
