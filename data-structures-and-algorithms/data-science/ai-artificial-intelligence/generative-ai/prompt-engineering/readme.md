# Prompt Engineering

readme.md

*   https://orkes.io/blog/guide-to-prompt-engineering/

*   State-Of-The-Art Prompting For AI Agents

    *   https://youtu.be/DL82mGde6wo

    *   markdown + structured (XML, JSON...)

    *   propmpts

        *   system

        *   developer

        *   user


    


Abbreviation
Formats

    PAR 
    
        steps
        
            Problem

            Action

            Result

        example

            A website experiencing slow load times.

            Optimize the website's performance.

            Faster load times and improved user experience.

        used

            Issue Resolution
            Process Improvement
            Customer Feedback
            Analysis
            Product Enhancement
            Service Optimization

    RTF
    
        Role

        Task 

        Format

        example

            You are a skilled Digital Marketing Specialist.

            Create an email marketing campaign for a new software product.

            Write the email in a persuasive and professional tone, including key features and a call to action.

        usage

            Social Media Post Creation
            Email Campaign Writing 
            Blog Writing

            Ad Copywriting
            Product Description

    TAG
        Target 
        Action 
        Goal

            Small business owners.
            
            Explain the benefits of using cloud storage solutions.

            Convince them to switch from local storage to cloud storage.

            Product Benefits Explanation

            Service Promotion • Educational Content

            Social Media Campaign • Webinar Invitation

        BAB

            Before
            After
            Bridge

                Explain the ideal scenario where productivity is high.

                Describe the problem of low productivity in remote teams.

                Introduce a productivity tool that can help achieve this.

                Case Study Writing
                
                Customer Testimonial Creation

                Product Launch Story
                
                Business Turnaround Story

                Service Improvement Narrative

        CARE

            Context
            
            Action
            
            Result
            
            Evaluation

                A company struggling with high employee turnover.

                Implement a new employee engagement program.

                Reduced turnover and increased employee satisfaction.

                Assess the effectiveness of the program after six months.

                Project Report Writing
                
                Performance Review
                
                Program Effectiveness Assessment
                
                Customer Service Improvement Plan
                
                Marketing Campaign Analysis


Prompt formats in the context of AI and large language models (LLMs) refer to the specific ways instructions, context, and desired outputs are structured and presented to guide the AI in generating relevant responses. Different prompt formats include zero-shot, few-shot, and Chain-of-Thought (CoT), each with its own characteristics and applications. 
Key elements of prompt formats:
Structure:
The overall organization and layout of the prompt, including the order and arrangement of different components. 
Components:
The specific parts of a prompt, such as instructions, context, examples, and desired output indicators. 
Language:
The specific wording and phrasing used in the prompt, which can significantly impact the AI's understanding and response. 
Delimitation:
Clear separation between different sections of the prompt to avoid ambiguity. 
Consistency:
Maintaining a uniform format across similar types of prompts for better predictability. 

Types of Prompt Formats:
Zero-shot prompting:
Asking the model to perform a task without providing any examples. 
Few-shot prompting:
Providing the model with a few examples before asking it to perform a similar task. 
Chain-of-thought (CoT) prompting:
Encouraging the model to break down complex reasoning into a series of steps. 
Generated knowledge prompting:
Leveraging the model's ability to generate new knowledge or information to improve its response. 
Examples of Prompt Formats:
Text Summarization: Providing a long text and asking the model to summarize it.
Information Extraction: Providing a text and asking the model to extract specific pieces of information.
Question Answering: Asking the model a question and expecting a relevant answer.
Text Classification: Providing a text and asking the model to classify it into predefined categories.
Code Generation: Providing a description of a desired code functionality and asking the model to generate the code.
Conversation: Engaging the model in a conversation and expecting it to respond naturally.
Reasoning: Providing a problem and asking the model to reason through it step-by-step. 
Additional Considerations:
Specificity:
Being clear and specific in the instructions can help the AI better understand the desired output. 
Context:
Providing relevant context can help the AI generate more accurate and relevant responses. 
Output Indicators:
Specifying the desired format or type of output (e.g., JSON, Markdown) can improve the quality of the response. 
Prompt Templates:
Utilizing prompt templates with replaceable variables can allow for testing different prompt variations without rewriting the entire prompt. 
LangChain — Prompt Template. What is a Prompt | by Tony | Medium
Understanding and utilizing different prompt formats is a crucial aspect of prompt engineering, enabling users to effectively guide AI models to produce desired results. 


A well-crafted prompt typically consists of:

The Directive: The main instruction or task.
Examples: Sample inputs/outputs to guide the expected response.
Role (Persona): The perspective or tone the AI should adopt.
Output Formatting: Specifications for how the response should be structured.
Additional Information: Background or context that informs the task.

https://learnprompting.org/docs/introduction

https://www.promptingguide.ai/introduction/basics

https://www.promptingguide.ai/introduction/examples

https://blog.alexanderfyoung.com/how-to-craft-the-perfect-prompt/

How I Write The Perfect Prompt (ChatGPT Masterclass)

    https://www.youtube.com/watch?v=0vS4UKyNk8k

