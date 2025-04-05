# C# CSharp and .NET dotnet

csharp-dotnet.md

c# rag extract information from pdf

https://github.com/kermitt2/grobid

https://github.com/itext/itext-dotnet

https://sourceforge.net/projects/pdftohtml/

Python

    https://github.com/docling-project/docling

https://www.reddit.com/r/LangChain/comments/1fsd1yw/best_open_source_rag_for_100s_of_pdfs/

Real time RAG App using Llama 3.2 and Open Source Stack on CPU

    https://www.youtube.com/watch?v=7hnZ6SFnXXA

        https://github.com/AIAnytime/Document-Buddy-App


*   ~35k pdfs

    *   most of them are really old dense texts from 1950's. 
    
    *   tested Various packages 
    
        *   pymupdf, 
        
        *   pydf
        
            *   IMO pypdf provided me the best output

        *   unstructured 

            *   https://github.com/Unstructured-IO/unstructured
            
            *   https://github.com/Unstructured-IO/unstructured-api

                *   https://blog.gopenai.com/extracting-knowledge-from-pdfs-a-step-by-step-rag-implementation-with-langchain-2f163628da8b
        
        *   https://github.com/Cinnamon/kotaemon


if the text is easily readable and it contains table and stuff then unstructured is better. 
Or even better use LlamaIndex.

All these methods employ the same Retrieval-Augmented Generation (RAG) approach:

    1.  Convert PDF to text

    2.  Divide text into chunks

    3.  Transform chunks into vectors

When querying a Large Language Model (LLM), it retrieves the most relevant chunks along with their surrounding text. 
This technique is highly effective for processing a small number of PDFs or files.

However, when dealing with a large volume of files, the standard RAG approach may lead to hallucinations or inaccuracies.
To address this limitation, I am currently developing a novel method for handling multi-layer processing of extensive 
file collections.

https://github.com/omo-ai/omo

https://huggingface.co/vidore/colpali

https://github.com/weaviate/Verba

https://www.onyx.app/

It’s pretty simple to get an LLM working locally. It’s embeddings that are the tricky part when you want to stay private. OpenAI has the best embeddings hands down but you have to send them your data.

If you’re got ollama or lmstudio you can host a purpose built embedding model. You just have to write an interface e function for it.

Are you a software developer? It’s not that hard to do all of this from scratch once it’s been demystified.


Check out bRAGAI-langchain. It’s a comprehensive open-source RAG repo with guides for handling large datasets like PDFs, from setup to advanced retrieval techniques.

https://github.com/bRAGAI/bRAG-langchain

https://github.com/Zipstack/unstract

ETL stands for extract, transform, and load

Unstract: How To Convert PDFs, Docx, & CSV Into Structured Data For RAG With AI - Opensource!

    https://www.youtube.com/watch?v=z_3DtpDhzAI


https://www.nuget.org/packages/PdfPig/0.1.9-alpha-20240429-7f42a#readme-body-tab

https://github.com/UglyToad/PdfPig

https://github.com/leungkimming/SK-DocumentSearch

https://github.com/microsoft/kernel-memory

https://github.com/microsoft/kernel-memory

You’re looking for a way to simple extract text from PDF’s page by page?

https://github.com/UglyToad/PdfPig

Check out this solution using Amazon Textract. It employs a document layout-aware chunking technique that handles various document elements (list, tables, paragraphs) differently. It preserves context of each chunk, appending section headers to each passage chunk, column names to each tabular chunk etc Also creates a "chunk-tree" to implement advanced retrieval techniques like Small-to-Big It also touches on hybrid retrieval using OpenSearch https://github.com/aws-samples/layout-aware-document-processing-and-retrieval-augmented-generation

https://www.reddit.com/r/LangChain/comments/1cn0z11/extract_tables_from_pdf_for_rag/

https://github.com/VikParuchuri

    https://github.com/VikParuchuri/marker

        Marker converts documents to markdown, JSON, and HTML quickly and accurately.

            Converts PDF, image, PPTX, DOCX, XLSX, HTML, EPUB files in all languages
            Formats tables, forms, equations, inline math, links, references, and code blocks
            Extracts and saves images
            Removes headers/footers/other artifacts
            Extensible with your own formatting and logic
            Optionally boost accuracy with LLMs
            Works on GPU, CPU, or MPS

    https://github.com/VikParuchuri/surya

        Surya is a document OCR toolkit that does:

            OCR in 90+ languages that benchmarks favorably vs cloud services
            Line-level text detection in any language
            Layout analysis (table, image, header, etc detection)
            Reading order detection
            Table recognition (detecting rows/columns)
            LaTeX OCR

    https://github.com/VikParuchuri/pdftext

        PDFText

            Text extraction like PyMuPDF, but without the AGPL license. PDFText extracts plain text or structured 
            blocks and lines. It's built on pypdfium2, so it's fast, accurate, and Apache licensed.

https://www.aryn.ai/

    https://github.com/aryn-ai/sycamore

https://www.deeplearning.ai/short-courses/preprocessing-unstructured-data-for-llm-applications/


https://github.com/conjuncts/gmft

https://github.com/maysa-mayel/balance-sheet-extraction

https://github.com/mattlgroff/pdf-to-markdown

https://structhub.io/

    https://structhub.io/pricing

        Free

            All you need to get started

            $0
            /month

            2000 Document Pages
            100 Req/Min Rate Limit

https://github.com/ArtifexSoftware/Ghostscript.NET

    https://github.com/jhabjan

    https://stackoverflow.com/questions/68788058/converting-a-pdf-to-text-using-ghostscript-net-i-get-an-error-trying-to-send-th

    https://github.com/ArtifexSoftware/Ghostscript.NET/blob/master/Ghostscript.NET.Samples/Samples/PipedOutputSample.cs

    https://tech.io/playgrounds/10058/scanned-pdf-to-ocr-textsearchable-pdf-using-c


https://www.reddit.com/r/dotnet/comments/14wz8x1/completely_free_libraries_to_read_data_from_a_pdf/

    https://github.com/GowenGit/docnet

    https://github.com/empira/PDFsharp

        https://www.pdfsharp.net/wiki/PDFsharpSamples.ashx?AspxAutoDetectCookieSupport=1

        https://docs.pdfsharp.net/

https://github.com/microsoft/RAG-PDF-Analyzer-WPF-Sample


Semantic Chunking

    https://www.youtube.com/watch?v=w_veb816Asg

https://dzone.com/articles/rag-model-for-pdf-content-extraction-and-query-answering

https://www.textcontrol.com/blog/2024/06/10/extract-data-from-pdf-documents-with-csharp/


Approaches for RAG with Azure AI Search

    https://learn.microsoft.com/en-us/azure/search/retrieval-augmented-generation-overview#approaches-for-rag-with-azure-ai-search

    Microsoft has several built-in implementations for using Azure AI Search in a RAG solution.

    Azure AI Foundry, use a vector index and retrieval augmentation.
    Azure OpenAI, use a search index with or without vectors.
    Azure Machine Learning, use a search index as a vector store in a prompt flow.

How to Ingest a PDF File into a Vector Database

    https://www.youtube.com/watch?v=it84XR6N4hk

https://microsoft.github.io/graphrag/

## MAUI

*   https://learn.microsoft.com/en-us/windows/ai/samples/tutorial-maui-ai



cE rag markdown

https://learn.microsoft.com/en-us/azure/ai-services/document-intelligence/concept/retrieval-augmented-generation?view=doc-intel-4.0.0

https://medium.com/@pymupdf/rag-llm-and-pdf-conversion-to-markdown-text-with-pymupdf-03af00259b5d

https://github.com/microsoft/kernel-memory



https://www.reddit.com/r/LangChain/comments/1fsd1yw/best_open_source_rag_for_100s_of_pdfs/

f you don’t want your data going anywhere use AnythingLLM with a local LLM. You’re likely best organizing your PDFs into topic-based workspaces. Putting them all into a single RAG system runs the risk of somewhat “dirty” replies since the vector database may start pulling inferior data from documents unrelated to the query.

Be warned, unless you have a great GPU results also may not be great. The small LLM models still struggle a bit with nuanced QA, an important part of knowledge based RAG systems.


I am working with ~35k pdfs, most of them are really old dense texts from 1950's. I've tested Various packages like pymupdf, pydf, unstructured. IMO pypdf provided me the best output

    Interesting that it’s better than unstructured .. I’ll give it a try. Does it maintain context tho? Eg if there’s text then a table then an image

        if the text is easily readable and it contains table and stuff then unstructured is better. Or even better use LlamaIndex.

I use unstructured. You can install it locally or deploy unstrucutred-api as your own microservice. No need to use their paid api.

https://github.com/Unstructured-IO/unstructured
https://github.com/Unstructured-IO/unstructured-api


All these methods employ the same Retrieval-Augmented Generation (RAG) approach:

Convert PDF to text

Divide text into chunks

Transform chunks into vectors

When querying a Large Language Model (LLM), it retrieves the most relevant chunks along with their surrounding text. This technique is highly effective for processing a small number of PDFs or files.

However, when dealing with a large volume of files, the standard RAG approach may lead to hallucinations or inaccuracies. To address this limitation, I am currently developing a novel method for handling multi-layer processing of extensive file collections.

I built a completely local vector database of 10,000 pdfs. I tried many tools but the best workflow for me was to convert every page to an image using pdf2image and then pytesseract to extract the text. Every other method had annoying artifacts.

https://www.reddit.com/r/LangChain/comments/1gtj631/a_smart_way_to_split_markdown_documents_for_rag/

https://www.reddit.com/r/Rag/comments/1hb07mz/rag_with_plain_text_and_markdown/

https://www.reddit.com/r/Rag/comments/1f0q2b7/rethinking_markdown_splitting_for_rag_context/

https://medium.com/data-science/improved-rag-document-processing-with-markdown-426a2e0dd82b

· Comparing PDF Libraries
∘ PyPDF
∘ Unstructured.io
∘ PyMuPDF4LLM
∘ Docling
∘ Processing Speed
· Chunking
· Adding Metadata To Markdown
· Conclusion
· References

Comparing PDF Libraries

https://github.com/mathieumack/RAG.Parsers

https://github.com/mathieumack/RAG.Parsers/tree/main/src

https://stackoverflow.blog/2024/12/27/breaking-up-is-hard-to-do-chunking-in-rag-applications/

C# RAG

https://devblogs.microsoft.com/dotnet/demystifying-retrieval-augmented-generation-with-dotnet/


Retrieval-Augmented Generation (RAG) with .NET 8: A Full Local Resource Guide
https://www.youtube.com/watch?v=VVZU-lbEegw

RAG in C# using DeepSeek-R1
https://www.youtube.com/watch?v=KAZ4MJ9HPpU
https://github.com/elbruno/deepseek-rag-ollama

https://github.com/elbruno/Ollama-CSharp-Playground

https://github.com/microsoft/PhiCookBook

What is Retrieval-Augmented Generation (RAG)?
    https://www.youtube.com/watch?v=T-D1OfcDW1M

RAG vs. CAG: Solving Knowledge Gaps in AI Models
https://www.youtube.com/watch?v=HdafI0t3sEY

