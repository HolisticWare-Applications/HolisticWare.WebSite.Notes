# `llamafile`

llamafile new model

https://github.com/Mozilla-Ocho/llamafile

https://news.ycombinator.com/item?id=38464057

https://github.com/Mozilla-Ocho/llamafile/issues/242


I downloaded Quantized GGUF model files for Tiny-Vicuna-1B from Jiayi-Pan from this link https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q8_0.gguf
After downloading the latest release of llamafile which is v0.6.2,unzip and rename the folder from llamafile-0.6.2 to llamafile.
Then I had to add the zipalign to the path with this command as temporary export PATH=$PATH:/root/llamafile/bin/ where /root/llamafile/bin/ is the location of my extracted llmafile bin folder, it may vary to user to user.
I ran this command ./llamafile/bin/llamafile-convert tiny-vicuna-1b.q8_0.gguf to convert the Quantized GGUF model files to llamafile binary
success_l
Output was this llamafile tiny-vicuna-1b.q8_0.llamafile, I needed to run in a windows pc with following cpu spec so i transfered it and rename this tiny-vicuna-1b.q8_0.llamafile to tiny-vicuna-1b.q8_0.llamafile.exe
cpu
After that run it as normal program which openup the browser tab with gui, I asked a question from the gui "how to make sure python code has correct indention"

https://www.llamaindex.ai/blog/using-llamaindex-and-llamafile-to-build-a-local-private-research-assistant

https://simonwillison.net/2023/Nov/29/llamafile/

curl \
    -Lo \
        llamafile \
        https://github.com/Mozilla-Ocho/llamafile/releases/download/0.1/llamafile-server-0.1
curl -Lo mistral.gguf https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf
.\llamafile.exe -m mistral.gguf


https://github.com/Mozilla-Ocho/llamafile

https://github.com/Mozilla-Ocho/llamafile/blob/main/llama.cpp/server/README.md#api-endpoints



       llamafile [--chat] [flags...] -m model.gguf
       llamafile [--server] [flags...] -m model.gguf [--mmproj vision.gguf]
       llamafile [--cli] [flags...] -m model.gguf -p prompt
       llamafile [--cli] [flags...] -m model.gguf --mmproj vision.gguf --image
                 graphic.png -p prompt


llamafile \
    --chat \
        --model \
            $HOME/Downloads/mixtral-8x7b-instruct-v0.1.Q8_0.gguf

llamafile \
    --server \
        --port 40400 \
        --model \
            $HOME/Downloads/mixtral-8x7b-instruct-v0.1.Q8_0.gguf



llamafile

https://huggingface.co/Mozilla/Llama-3.2-3B-Instruct-llamafile/blob/main/Llama-3.2-3B-Instruct.Q6_K.llamafile
https://huggingface.co/Mozilla/Meta-Llama-3.1-8B-Instruct-llamafile/resolve/main/Meta-Llama-3.1-8B-Instruct.Q4_K_M.llamafile
https://huggingface.co/Mozilla/gemma-3-12b-it-llamafile/resolve/main/google_gemma-3-12b-it-Q4_K_M.llamafile

https://huggingface.co/Mozilla/QwQ-32B-llamafile/resolve/main/Qwen_QwQ-32B-Q4_K_M.llamafile

https://huggingface.co/Mozilla/DeepSeek-R1-Distill-Qwen-14B-llamafile/resolve/main/DeepSeek-R1-Distill-Qwen-14B-Q4_K_M.llamafile

https://huggingface.co/Mozilla/Mistral-7B-Instruct-v0.3-llamafile/resolve/main/Mistral-7B-Instruct-v0.3.Q4_0.llamafile

https://huggingface.co/Mozilla/granite-3.2-8b-instruct-llamafile/resolve/main/granite-3.2-8b-instruct-Q4_K_M.llamafile

https://huggingface.co/Mozilla/Phi-3-mini-4k-instruct-llamafile/resolve/main/Phi-3-mini-4k-instruct.F16.llamafile

https://huggingface.co/Mozilla/Mixtral-8x7B-Instruct-v0.1-llamafile/resolve/main/mixtral-8x7b-instruct-v0.1.Q5_K_M.llamafile


text-embeddings/


https://huggingface.co/Mozilla/e5-mistral-7b-instruct/resolve/main/e5-mistral-7b-instruct-Q5_K_M.llamafile

https://huggingface.co/Mozilla/mxbai-embed-large-v1-llamafile/resolve/main/mxbai-embed-large-v1-f16.llamafile
