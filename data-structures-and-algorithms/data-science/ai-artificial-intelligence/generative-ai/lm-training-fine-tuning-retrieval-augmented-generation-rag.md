# LM training, Fine Tuning, Retrieval Augmented Generation

lm-training-fine-tuning-retrieval-augmented-generation-rag.md

*   https://eugeneyan.com/writing/llm-lessons/

*   https://levjj.github.io/thinkcspy/


## PDF + local RAG

Ask HN: I have many PDFs – what is the best local way to leverage AI for search?

    https://news.ycombinator.com/item?id=40528192


    gripgrep

        https://github.com/phiresky/ripgrep-all

    ack

        https://beyondgrep.com/

Ask HN: How do I train a custom LLM/ChatGPT on my own documents in Dec 2023?

    https://news.ycombinator.com/item?id=38759877

Ask HN: How do I train a custom LLM/ChatGPT on my own documents?

    https://news.ycombinator.com/item?id=36832572

Retrieval-Augmented Generation for Large Language Models: A Survey

    https://arxiv.org/abs/2312.10997
    

pdf2md

    https://github.com/m0ne/pdf2md

    brew install poppler
    npm install -g pdf2md

    pdf2md \
        <inputFile.pdf> \
        <projectName>

    pdf2md \
        00-selections/publishers/humble-bundle/Graphs_and_Network_Science_An_Introduct.pdf \
        00-selections/publishers/humble-bundle/Graphs_and_Network_Science_An_Introduct

It creates the following folder structure:

```
[projectName]
  [imgages]
    [projectName-01.png]
    [projectName-02.png]
    ...
  [src]
    [projectName.pdf]
  [projectName.md]    
```

https://github.com/opengovsg/pdf2md


Paperless

    https://docs.paperless-ngx.com/

    https://github.com/paperless-ngx/paperless-ngx

        https://docs.paperless-ngx.com/setup/#bare_metal

        Paperless runs on linux only

        rm -fr $HOME/paperless-ngx/
        mkdir -v $HOME/paperless-ngx/
        curl \
            --no-clobber \
            -o $HOME/paperless-ngx/docker-compose.yml \
            https://raw.githubusercontent.com/paperless-ngx/paperless-ngx/main/docker/compose/docker-compose.postgres-tika.yml
        curl \
            --no-clobber \
            -o $HOME/paperless-ngx/docker-compose.env \
            https://raw.githubusercontent.com/paperless-ngx/paperless-ngx/main/docker/compose/docker-compose.env
        curl \
            --no-clobber \
            -o $HOME/paperless-ngx/.env \
            https://raw.githubusercontent.com/paperless-ngx/paperless-ngx/main/docker/compose/.env

        ll  $HOME/paperless-ngx/
        code -n  $HOME/paperless-ngx/

### DevonThink

### Calibre

    the ebook manager

    Calibre eBook Manager - What it Can Do for You
    
        https://www.youtube.com/watch?v=XCLL9l1naPw

### LLMs

LLMFile
    
    Llamafile lets you distribute and run LLMs with a single file 
    
        https://news.ycombinator.com/item?id=38464057
    
    https://github.com/tluyben/llamafile-docker

ChatGPT-Web

    https://github.com/Niek/chatgpt-web

## Marker

conversions from pdf to markdown

    https://github.com/VikParuchuri/marker

    python 3.9+ and PyTorch. You may need to install the CPU version of torch first if you're not using a Mac or a GPU machine. See here for more details.

    Install with:

    pip install marker-pdf

    python3 -m venv ./venv
    source ./venv/bin/activate
    # python3 -m pip install \
    #     maker-pdf
    pip3 install \
        maker-pdf
        surya-ocr

    https://news.ycombinator.com/item?id=38482007

    https://github.com/VikParuchuri/surya

    pip install git+https://github.com/thiswillbeyourgithub/DocToolsLLM.git@dev



    python3 \
    python3-pip \
    python3-dev \
    imagemagick \
    fonts-liberation \
    gnupg \
    libpq-dev \
    default-libmysqlclient-dev \
    pkg-config \
    libmagic-dev \
    mime-support \
    libzbar0 \
    poppler-utils \

    unpaper ghostscript icc-profiles-free qpdf liblept5 libxml2 pngquant zlib1g tesseract-ocr



https://github.com/thiswillbeyourgithub/DocToolsLLM/


To parse PDFs for RAG applications, you'll need tools like 
    LLMwhisperer

        https://unstract.com/llmwhisperer/

    or 

    unstructured.io

        https://unstructured.io/

    
    https://github.com/Zipstack/unstract
    

