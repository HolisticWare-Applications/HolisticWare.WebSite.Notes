C# Indexing (Inverted Indexing)

indexing--inverted-indexing.md

need to create, what is known as an inverted index - which is at the core of how search engines work (a la Google). 
Apache Lucene is arguably the best library for inverted indexing.

2 options:

    *   Lucene.net
    
        *   .NET port of the Java Lucene library.

        *   https://lucenenet.apache.org/

Apache Solr - a full-fledged search server built using Lucene libs and easily integrable into your .NET application because it has a RESTful API. Comes out-of-the-box with several features such as caching, scaling, spell-checking, etc. You can make life easier for your app-to-Solr interaction using the excellent SolrNet library.

    *   Apache Solr
    
        *   https://solr.apache.org/

        *   https://code.google.com/archive/p/solrnet/

Apache Tika offers a very extensive data/metadata extraction toolkit working with PDFs, HTMLs, MS Office docs etc. A simpler option would be to the IFilter API. See this article for more details.

    https://incubator.apache.org/projects/tika.html


https://sphinxsearch.com/

https://github.com/jchristn/IndexEngine
