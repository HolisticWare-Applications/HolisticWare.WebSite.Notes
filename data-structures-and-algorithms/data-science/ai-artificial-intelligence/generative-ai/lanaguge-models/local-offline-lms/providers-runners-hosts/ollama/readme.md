# Ollama

readme.md

Local LLMs with Ollama

https://python.langchain.com/docs/how_to/local_llms/

%pip install -qU langchain_ollama

from langchain_ollama import OllamaLLM

llm = OllamaLLM(model="llama3.1:8b")



llm.invoke("The first man on the moon was ...")






for chunk in llm.stream("The first man on the moon was ..."):
    print(chunk, end="|", flush=True)



from langchain_ollama import ChatOllama

chat_model = ChatOllama(model="llama3.1:8b")

chat_model.invoke("Who was the first man on the moon?")



https://www.datacamp.com/tutorial/deepseek-r1-ollama
```shell
ollama pull karanchopda333/whisper
ollama pull devstral-2:latest
ollama pull devstral-small-2:latest
ollama pull codellama:13b
ollama pull codellama:34b
ollama pull codellama:70b
ollama pull codegemma:7b
ollama pull cogito:32b
ollama pull cogito:32b
ollama pull cogito:70b
ollama pull codeqwen:7b
ollama pull codegeex4:9b
ollama pull codeup:13b
ollama pull codebooga:34b
```


