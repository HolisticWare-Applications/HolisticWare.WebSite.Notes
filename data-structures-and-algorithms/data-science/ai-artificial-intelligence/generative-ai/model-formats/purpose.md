#

models


*   inference

    qwen3:4b-instruct-2507-q4_K_M.

        Great general inference support.

        Good coding support. 
        While this needs more testing, 
        to help support the very coding for my apps and configuration file setups.

        Good multilingual support (I need to test this further).

*   embedding 

    favorite is: bge-m3.

        Multilingual embedding support. 
        to be the best of the ones that I tested and have stuck with this one for months.

general chatbots: 

    qwen3:4b-instruct-2507-q4_K_M.

    custom RAG development: 
        qwen3:4b-instruct-2507-q4_K_M
        
        bge-m3 together.

Am using QWEN 2.5 0.5B Q8 on a 3060, with llama.cpp and python. Currently feeding it pdfs to summarize. Output quality is amazing given the model 

General inference: 

    llama3.2:1b-instruct-q4_K_M

Coding: 

    qwen2.5-coder:1.5b

discovered that qwen3 offered better general inference capabilities than llama3.2

General inference

     qwen3:1.7b-q4_K_M

Coding

    qwen2.5-coder:1.5b

Then I did the math and realized tht the two models were taking up more memory than a potentially more robust single model. So, I changed over to the following:

    
General inference and coding

    qwen3:4b-instruct-2507-q4_K_M

