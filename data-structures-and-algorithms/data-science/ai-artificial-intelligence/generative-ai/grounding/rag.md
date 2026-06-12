# RAG

*   CODE Spotlight: Unlocking the Power of Agentic RAG

    *   https://www.youtube.com/watch?v=fYxevQWZ-44&t=420s

*   https://danielkliewer.com/blog/2024-12-01-Basic-RAG

*   https://jakobs.dev/learnings-ingesting-millions-pages-rag-azure/

*   https://www.anthropic.com/engineering/contextual-retrieval



*   RAG Explained: From Simple Guide to Hidden Challenges

    *   https://www.youtube.com/watch?v=17iFHN3n_b4


*   https://www.reddit.com/r/Rag/comments/1oly866/after_building_multiple_production_rags_i/

This has been our philosophy for over a year now with TrustGraph - production ready solutions require quite a bit more than just RAG pipelines. If you already have lots of data infrastructure, then yes, you can probably take a lot of the AI frameworks and use them to pull from the high quality data. But honestly, how many orgs have robust data infrastructure full of high quality data?

There are all sorts of unexpected challenges with scaling up these kinds of services in a reliable way with the features enterprises need like multi-tenancy, access controls, the ability to build high quality knowledge bases, the ability then to retrieve that knowledge, manage those knowledge bases (CRUD), and then deploy the entire stack using modern deployments like K8s that can ship locally, on-prem, or in any cloud.

I know in the past, some people have told us they think what we built is overkill. I suppose if you're building a RAG pipeline that only a handful of people will be using once or twice a day, that's probably true. But, we don't think that's the way enterprises will use agentic AI.

If you're looking for something that goes beyond the well-known AI frameworks, and is to built to be production-grade out of the box, give TrustGraph a try. It's open source, and will always be open source.

*   https://github.com/trustgraph-ai/trustgraph


rag

https://www.reddit.com/r/Rag/comments/1rej56g/lessons_from_shipping_a_rag_chatbot_to_real_users/

https://www.reddit.com/r/Rag/comments/1rgefo9/is_rag_effective_for_nonenglish_langauges/

https://www.reddit.com/r/Rag/comments/1rcb47i/my_rag_retrieval_accuracy_is_stuck_at_75_no/

https://www.reddit.com/r/Rag/comments/1rfinck/the_silent_bottleneck_in_production_rag_why/

    https://medium.com/@dhairyapandya2006/going-beyond-cosine-similarity-hidden-bottleneck-for-production-grade-r-a-g-437ae0eaafa5

https://www.reddit.com/r/Rag/comments/1rghmct/elasticsearch_isnt_just_a_vector_db_its_an_ai/

https://www.reddit.com/r/Rag/comments/1rfd4md/building_rag_pipelines_using_elasticsearch/

- Semantic similarity (vectors)

- Keyword relevance (BM25)

- Metadata filtering

https://www.reddit.com/r/Rag/comments/1rg4xpf/blogathon_topic_semantic_reranking_with/

https://www.reddit.com/r/Rag/comments/1rf7xf6/whats_your_experience_with_hybrid_retrieval/


https://github.com/Siddhesh2377/ToolNeuron
    RAG
