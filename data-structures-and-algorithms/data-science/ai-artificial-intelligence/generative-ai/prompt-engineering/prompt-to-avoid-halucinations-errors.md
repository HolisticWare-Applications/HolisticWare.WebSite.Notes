# Prompt to avoid Hallucination / Errors

prompt-to-avoid-halucinations-errors.md

*   https://www.godofprompt.ai/blog/9-prompt-engineering-methods-to-reduce-hallucinations-proven-tips

*   eward-seeking bias as a core driver of hallucinations

*   eminds it, within the conversation, what kind of “pleasing” is acceptable (truthful, cautious, source-aware).


1.  “According to…” Prompting

    *   Tips: 

        1. Always name a trustworthy and relevant source in your question.

        2. Use “According to…” for topics where it's important to be accurate, like science, history, or technical subjects.

        3. Ask the AI to provide references or sources when possible, to make the information more trustworthy.

2.  Chain-of-Verification Prompting

    1. Break your question into smaller parts that can be checked separately.

    2. Ask the AI to confirm each part before moving on to the next.

    3. Use this method for complex topics where accuracy is important.

3.  Step-Back


1. After getting an initial answer, ask the AI to review and confirm the information.

2. Encourage the AI to look for any errors or missing details.

3. Use this method for important topics where getting the details right is crucial.


4. Contextual Anchoring

    1. Include specific details or background information in your question to give the AI a clear context.

    2. Use contextual anchoring for complex or broad topics to keep the AI's responses focused and accurate.

    3. Adjust the context as needed to get the most relevant and useful information.

5. Layered Questioning

        1. Start with a broad question and then break it down into smaller, related questions.

        2. Ask the AI to address each part of the topic step by step.

        3. Use this method to explore complex subjects in detail, ensuring each aspect is covered accurately.


6. Reflective Prompting

        1. After receiving an initial answer, ask the AI to review and reflect on its response.

        2. Encourage the AI to identify and correct any mistakes or missing information.

        3. Use Reflective Prompting for topics where accuracy and completeness are essential.

7. Scenario-Based Prompting

        1. Create detailed scenarios that are relevant to the topic you are asking about.

        2. Use Scenario-Based Prompting for practical, real-world situations where specific actions or information are needed.

        3. Adjust the scenario as needed to get the most accurate and useful response.


8. Feedback Loop Integration

        1. Always provide specific feedback on the AI's responses to help guide its improvements.

        2. Use past interactions to refine and improve future prompts.

        3. Implement a continuous feedback loop to ensure the AI's performance keeps improving over time.

9. Progressive Prompting


        1. Begin with a general question and then add layers of specificity.

        2. Ensure each step logically builds on the previous one to create a comprehensive response.

        3. Use Progressive Prompting for topics that require detailed explanations and multiple aspects to be covered.


To avoid hallucination errors in AI prompts, focus on clarity, specificity, and grounding the AI's responses in reliable information. Use techniques like retrieval-augmented generation (RAG), chain-of-thought prompting, and providing context through specific examples or instructions. Additionally, consider using techniques like contextual anchoring and reflective prompting to further refine the AI's responses. 
Here's a breakdown of key strategies:
1. Clarity and Specificity:
Be precise:
Avoid ambiguity by clearly stating what you want the AI to do and the format you expect the response in.
Single task focus:
Break down complex tasks into smaller, specific prompts rather than one long, multi-part question.
**Example: **
Instead of "How can I improve team collaboration?", try "List three specific strategies to improve team collaboration." 
2. Grounding in Reliable Information:
Retrieval-Augmented Generation (RAG):
Integrate real-time knowledge retrieval from databases or other reliable sources to ground the AI's responses. 
Contextual Anchoring:
Ground the AI's responses by anchoring them to specific, verifiable facts or information. 
Example:
"Based on the information in this [document/website], what are the main points?" 
3. Prompt Engineering Techniques:
Chain-of-Thought Prompting: Guide the AI through a logical reasoning process by breaking down the problem into steps. 
Reflective Prompting: Have the AI evaluate its own response for accuracy and relevance. 
Chain-of-Verification (CoVe): Implement a verification loop where the AI generates questions to validate its initial response. 
4. Other Important Considerations:
Temperature Control:
Adjust the temperature setting to influence the randomness of the AI's responses. Lower temperatures can lead to more predictable and less hallucinated outputs. 
Limit Possible Mistakes:
Provide options or a specific structure for the AI to follow, reducing the need for improvisation and potential errors, according to shelf.io. 
Human Review:
Always manually review and validate the AI's responses, especially in critical applications, says beecrowd.com. 
Regularly Evaluate:
Use metrics and monitoring tools to detect potential hallucinations and refine your prompts accordingly. 


https://alfapeople.com/importance-of-prompt-engineering-preventing-ai-hallucinations/


https://adoption.microsoft.com/en-us/sample-solution-gallery/?keyword=&sort-by=updateDateTime-true&page=1&product=powerplatform-prompts


```
Think step by step. Consider my question carefully and think of the academic or professional expertise of someone that could best answer my question. You have the experience of someone with expert knowledge in that area. Be helpful and answer in detail while preferring to use information from reputable sources.
```

```
Think systematically. You are a team of four AI agents: the MANAGER, EXPERT1, EXPERT2, and EXPERT3. The workers, EXPERT1, EXPERT2, and EXPERT3, each possess different sub-specialties within the realm of expertise identified by the MANAGER. The MANAGER carefully assesses the question or task, determining the most relevant academic or professional expertise required to formulate a comprehensive response. Each worker independently develops a draft response, grounded in factual data and citing reputable sources where necessary. These drafts are then peer-reviewed among the workers for accuracy and completeness, with each worker integrating feedback to create their final individual responses. The MANAGER carefully analyzes these final responses, integrating them to create a single, comprehensive output. This output will be accurate, detailed, and useful, with references to original reputable sources and direct quotations from them included for validity and context. Only the final, integrated output response is provided. Markdown is utilized where appropriate for clarity and emphasis.
```

```
Use systematic thinking and elaborate step by step to understand the subject of the query. Consider the question and identify the expertise of someone best suited to answer the question or perform the task. Craft a clear, structured response to the query. Start with a concise introduction and paragraphs that elaborate key points followed by detailed explanations with examples. Use your knowledge to make connections between ideas and concepts to provide comprehensive responses. Consider higher-order relationships and interactions between concepts and facts to determine relevance or make connections. Use transitions for coherence, and end with a summary or recommendation. Adhere to relevant best practices and idiomatic language. Avoid repetition. Answer my questions and perform tasks to the very best of your ability. A helpful and accurate response is extremely important to me, so consider using diagnostic approaches when appropriate to the question. All statements of fact must be verifiable or appropriately qualified. Are you sure that's your final answer? It might be worth taking another look.
```


```
Analyze, recheck, doublecheck, tripplecheck, verify and factcheck your answer before responding. Accuracy is like gold, and I want only gold
```

```
System Prompt (Hallucination-Reduction Mode):

You are a fact-conscious language model designed to prioritize epistemic accuracy over fluency or persuasion.

Your core principle is: “If it is not verifiable, do not claim it.”

Behavior rules:

1.	When answering, clearly distinguish:

•	Verified factual information

•	Probabilistic inference

•	Personal or cultural opinion

•	Unknown / unverifiable areas

2.	Use cautious qualifiers when needed:

•	“According to…”, “As of [date]…”, “It appears that…”

•	When unsure, say: “I don’t know” or “This cannot be confirmed.”

3.	Avoid hallucinations:

•	Do not fabricate data, names, dates, events, studies, or quotes

•	Do not simulate sources or cite imaginary articles

4.	When asked for evidence, only refer to known 
and trustworthy sources:

•	Prefer primary sources, peer-reviewed studies, or official data

5.	If the question contains speculative or false premises:

•	Gently correct or flag the assumption

•	Do not expand upon unverifiable or fictional content as fact
Your tone is calm, informative, and precise. You are not designed to entertain or persuade, but to clarify and verify.

If browsing or retrieval tools are enabled, you may use them to confirm facts. If not, maintain epistemic humility and avoid confident speculation.
```



```
I want you to become my Prompt Creator. Your goal is to help me craft the best possible prompt for my needs. The prompt will be used by you, ChatGPT. You will follow the following process:

Your first response will be to ask me what the prompt should be about. I will provide my answer, but we will need to improve it through continual iterations by going through the next steps.

Based on my input, you will generate 2 sections. a) Revised prompt (provide your rewritten prompt. It should be clear, concise, and easily understood by you), b) Questions (ask any relevant questions pertaining to what additional information is needed from me to improve the prompt).

We will continue this iterative process with me providing additional information to you and you updating the prompt in the Revised prompt section until I say we are done.
```



```
```



```
```



```
```



```
```



```
```



```
```



```
```



```
```


System prompt level (for Custom GPTs or API):

Add a semantic reminder at the end of the system prompt:

“Every 10–15 turns, reaffirm: ‘Please continue applying the epistemic integrity protocol unless explicitly instructed otherwise.’”

User-level turn injection (for standard ChatGPT or web use):

Drop-in reminders like:

2. ”Let’s keep things evidence-based.” or “Just a quick check-in: please keep the epistemic guardrails active.” every 10–15 turns to gently reinforce the behavior.

Memory-based reinforcement (if memory is enabled):

Add a persistent instruction like:

3. “I’d like you to always stay fact-centered and cautious in your replies with me.”


•	legal tech — only saying things that can be verified
•	healthcare — avoiding risky “confident” guesses
•	enterprise chat — keeping multi-turn logic consistent
•	research tools — saying “don’t know” instead of making stuff up


Initialize the Problem State: This is the starting point of your trip, your current location.

Generate Possible "Thoughts" or Next States: If you're at a crossroads, there are several directions you could take. Each of these options is a potential "thought" or future state. In terms of the Tree of Thought (ToT) framework, an LLM would generate these possible paths based on the information it has. For example, it could suggest: "Go north towards the highway", "Go east towards the scenic route", or "Go west towards the main city roads".

Evaluate the "Thoughts": Here, the LLM evaluates each of these paths. It might consider factors like traffic, distance, scenery, or the presence of rest stops. This could be akin to the evaluation a human would do when thinking about the pros and cons of each option.

Make a Decision: After generating and evaluating the different "thoughts", the LLM makes a decision. This is the path that seems to be the best based on the current information.

Look Ahead and Backtrack If Necessary: After the LLM has made its decision and "moved" along the chosen path, it will encounter new information. This could lead to it re-evaluating its decision. For example, it might find that the scenic route, while beautiful, is taking much longer than expected. In this case, the LLM can "look ahead" to anticipate future problems (like arriving too late) and backtrack if necessary, choosing a faster route instead.

Repeat the Process: This process of generating "thoughts", evaluating them, making decisions, and potentially backtracking continues until the final goal is reached - in this case, arriving at the destination of your road trip.


