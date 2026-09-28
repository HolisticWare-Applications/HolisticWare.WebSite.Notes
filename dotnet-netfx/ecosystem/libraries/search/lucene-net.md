Lucene.NET

https://lucenenet.apache.org/

https://github.com/apache/lucenenet

using (IndexReader reader = IndexReader.Open(GetCurrentDirectory(), true))
using (Searcher searcher = new IndexSearcher(reader))
using (Analyzer analyzer = new StandardAnalyzer(Version))
{
     //Do whatever else here.. No need to call "dispose".
}


https://code-maze.com/how-to-implement-lucene-dotnet/

https://lucenenet.apache.org/quick-start/tutorial.html

https://lucenenet.apache.org/quick-start/introduction.html

https://codeclimber.net.nz/archive/2009/09/02/lucenenet-your-first-application/


I've used full text searching in SQL Server and in SQLite. I've also used Lucene.net and ElasticSearch.

Lucene.net used to be out of date and poorly documented. The last time I used it was in 2014 or 2015. Managing the files on disk was a pain and the object model is non-trivial (it looks more like translated Java than a .NET library). I don't know if things have gotten better since.

SQL Server full text was OK, but you couldn't easily switch out word delimiters or stop words and the performance was kind of poor in some situations (e.g. joining projections off of the search results).

SQLite's full text capabilities were surprisingly good for a such a small library. I actually preferred using it to SQL Server (for full text) but it pales in features compared to either Lucene.net or ElasticSearch.

ElasticSearch is the best option, in my opinion. The documentation is pretty good, and it makes it really easy to test features using Postman. The installation is easy and you can host it on Windows or Linux. It gets complicated if you want to setup a cluster...though compared to what you would need to do to support multiple instances with any other solution above, its really reasonable. There are breaking changes between major versions, but we have not found upgrading to be very difficult. It offers the best development experience for any web developer that is comfortable consuming REST APIs and it exposes almost all of the power of Lucene without having to use the less ideal object model of Lucene.


Elastic Search

https://opensearch.org/

https://github.com/opensearch-project




https://www.meilisearch.com/

https://github.com/meilisearch/meilisearch

Full-text search
Leverage reliable and performant search with features like geosearch and faceting for improved relevancy.

Semantic search illustration
Semantic search
Unlock deeper understanding and context in search queries for more meaningful results.

Hybrid search illustration
Hybrid search
Blend full-text search efficiency and semantic depth for an unparalleled search experience.

Multi-modal search illustration
Multi-modal search
Expand search capabilities to include images, videos, and audio for more comprehensive results.

Filtering, faceting and sorting illustration
Filtering, faceting and sorting
Build complex search interfaces with a powerful toolkit, integrating full-text and semantic search.

Vector storage illustration
Vector storage
Store and retrieve vectors for advanced search, similarity queries, or RAG applications.

Federated search illustration
Federated search
Boost user experience and result relevancy by searching across multiple data sources at once.

Search analytics illustration
Search analytics
Gain actionable insights and make data-driven decisions with comprehensive search analytics.

Geosearch illustration
Geosearch
Deliver location-specific results by allowing users to filter and sort results based on the location.
