# Vector Databases

vector-databases.md


https://www.reddit.com/r/dotnet/comments/1cdbimf/c_llm_rag_architecture/?rdt=64324


While there are specialized vector databases, we have been working with Postgres and Npgsql + Pgvector for .NET. Supports
both Dapper and EF Core. In particular, Supabase is a good option because you can launch free projects on it to start
and it is launched with all of the extensions you need. However, AWS RDS also has the pgvector plugin available as well.

For processing of existing unstructured content, you can either choose to use a multi-modal model like the latest OpenAI -vision models or you can use more traditional OCR like Azure Document Intelligence. I find that the Layout Model with Document Intelligence is particularly good because it provides section types (Heading, Paragraph, Section, Table, etc.).

Why is this useful? It's almost always better to present the LLM a smaller dataset to work with and to do that, you'll need RAG. So you'll want to break the document down into smaller chunks. The best RAG frameworks will use a hybrid of traditional full-text + embedding similarity search to retrieve the most relevant chunks. We've found that embeddings alone are often not enough to generate a signal. So you may also want to familiarize yourself with the full-text search capabilities on your DB of choice.



As far as using Azure OpenAI vs OpenAI directly, one key thing is that Azure OpenAI has some quirks. Not all models are available in all regions and the models aren't released at the same pace as the OpenAI models. If you want to work with the latest and greatest, then use OpenAI directly. You can also experiment with alternate models since OpenAI can be quite slow. Check out groq.com and play with their LLaMA and Mixtral models on their custom hardware (extremely fast compared to OpenAI).


https://groq.com/

https://github.com/jgravelle/GroqApiLibrary

https://console.groq.com/keys

They moved that example 3 days after you posted it. 😅 It's now at 
https://github.com/microsoft/semantic-kernel/blob/main/dotnet/samples/Concepts/RAG/WithPlugins.cs

vDid you come up with something

find it intersting
https://github.com/SciSharp/BotSharp


I built a custom RAG pipeline for app that has .NET C# backend and is hosted on Azure.

Data extraction: Syncfusion.PdfToImageConverter to convert PDF pages to images. Azure.AI.Vision.ImageAnalysis to extract text from PDF page images. Azure.AI.TextAnalytics to extract meta data (summary, entities, key words etc) from extracted text.

Data preparation: Custom code for semantic data chunking. Azure OpenAI model text-embedding-ada-002 for data chunk embeddings

Data storage: Azure Redis Cache to save data chunks in session storage. Current use case is session based so no need for persistent storage but when needed will be swapped out for Azure Cosmos DB designed to store vector embeddings and Azure AI Search for retrieval.

Data retrieval: Azure OpenAI model text-embedding-ada-002 for user query embeddings. Custom code to analyze user queries and calculate vector embedding similarity between user query and data chunks.

Data processing: Azure OpenAI model gpt-4o to generate answers for user queries based on retrieved most relevant data chunks.

This likely isn’t the “best” way to implement RAG but my requirements were that data wasn’t allowed to leave our Azure environment so any third party APIs for any part of the pipeline were out.

So far the implementation is working well. It’s able to ingest one or more PDFs, summarize all data in the files and answer any questions the user might have that can be answered based on context provided by the text in the files uploaded.

You can use https://github.com/curiosity-ai/MiniLM for generating embeddings and https://github.com/curiosity-ai/hnsw-sharp for indexing as an easy starting point without having any external dependencies. It's what we use on our software and it scales nicely to multiple million files datasets

my goal is to replace lucene-net for AI llm search

what can you recomend for

convert model-from-[hugFace] to onnx

it seems like it maybe helps to educate llm for my docx/xlsx documents (i have html version of all). Is it?


