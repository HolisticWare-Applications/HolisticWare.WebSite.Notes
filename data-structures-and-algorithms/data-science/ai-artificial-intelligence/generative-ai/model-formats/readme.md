# Model Formats

ONNX models are saved in a single file with the . onnx extension. Unlike GGUF or Safetensors, ONNX contains not only the model's tensors and metadata, but also the model's computation graph. Including the computation graph in the model file allows for greater flexibility when working with the mode

https://huggingface.co/blog/ngxson/common-ai-model-formats

https://www.reddit.com/r/LocalLLaMA/comments/1m5ckr0/onnx_or_gguf/

https://medium.com/@vimalkansal/understanding-the-gguf-format-a-comprehensive-guide-67de48848256

https://main--dasarpai.netlify.app/dsblog/exploring-gguf-and-other-model-formats/

Model Formats

https://huggingface.co/blog/ngxson/common-ai-model-formats

GGUF
GGUF was initially developed for the llama.cpp project. GGUF is a binary format designed for fast model loading and saving, and for ease of readability. Models are typically developed using PyTorch or another framework, and then converted to GGUF for use with GGML.

Over time, GGUF has become one of the most popular formats for sharing AI models within the open-source community. It is supported by numerous well-known inference runtimes, including llama.cpp, ollama, and vLLM.

PyTorch (.pt/.pth)
The .pt/.pth extension represents PyTorch's default serialization format, storing model state dictionaries that contain learned parameters (weights, biases), optimizer states, and training metadata.

PyTorch models can be saved in two formats:

.pt: This format saves the entire model, including its architecture and learned parameters.
.pth: This format saves only the model's state dictionary, which includes the model's learned parameters and some metadata.
The PyTorch format is based on Python's pickle module, which serializes Python objects. To understand how pickle works, let's examine the following example:

import pickle
model_state_dict = { "layer1": "hello", "layer2": "world" }
pickle.dump(model_state_dict, open("model.pkl", "wb"))

The pickle.dump() function serializes the model_state_dict dictionary and saves it to a file named model.pkl. The output file now contains a binary representation of the dictionary:

To load the serialized dictionary back into Python, we can use the pickle.load() function:

import pickle
model_state_dict = pickle.load(open("model.pkl", "rb"))
print(model_state_dict)
# Output: {'layer1': 'hello', 'layer2': 'world'}

As you can see, the pickle module provides an easy way to serialize Python objects. However, it has some limitations:

Security: Anything can be pickled, including malicious code. This can lead to security vulnerabilities if serialized data is not properly validated. For example, this article from Snyk explains how pickle files can be backdoored.
Efficiency: It is not designed for lazy-loading or partial data loading. This can result in slow loading times and high memory usage when working with large models.
Portability: It is specific to Python, which can make sharing models with other languages challenging.
The PyTorch format can be a suitable choice if you are working exclusively within a Python and PyTorch environment. However, in recent years, the AI community has been shifting towards more efficient and secure serialization formats, such as GGUF and Safetensors.


Safetensors
Developed by Hugging Face, safetensors addresses security and efficiency limitations present in traditional Python serialization approaches like pickle, used by PyTorch. The format uses a restricted deserialization process to prevent code execution vulnerabilities.

A safetensors file contains:

A metadata section saved in JSON format. This section contains information about all tensors in the model, such as their shape, data type, and name. It can optionally also contain custom metadata.
A section for the tensor data.

Diagram of Safetensors format structure

Advantages:
Secure: Safetensors employs a restricted deserialization process to prevent code execution vulnerabilities.
Fast: It is designed for lazy-loading and partial data loading, which can lead to faster loading times and lower memory usage. This is similar to GGUF, where you can mmap() the file.
Efficient: Supports quantized tensors.
Portable: It is designed to be portable across different programming languages, making it easy to share models with other languages.
Disadvantages:
Quantization scheme is not as flexible as GGUF. This is mainly due to the quantization support provided by PyTorch.
A JSON parser is required to read the metadata section. This can be problematic when working with low-level languages like C++, which do not have built-in JSON support.


The safetensors format is the default serialization format used by Hugging Face's transformers library. It is widely used in the open-source community for sharing, training, fine-tuning, and serving AI models. New models released on Hugging Face are all stored in safetensors format, including Llama, Gemma, Phi, Stable-Diffusion, Flux, and many others.

https://dev.to/lukehinds/understanding-safetensors-a-secure-alternative-to-pickle-for-ml-models-o71

https://medium.com/@ch.mittendorf/navigating-model-weight-file-formats-safetensors-bin-pt-hdf5-and-beyond-97266a621bdf

