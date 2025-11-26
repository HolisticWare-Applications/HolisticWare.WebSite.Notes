# LLama.cpp

llama-cpp-aka-llama.cpp.md

*   https://github.com/ggml-org/llama.cpp

*   https://github.com/ggml-org/llama.cpp/discussions/15396


https://levelup.gitconnected.com/how-i-built-a-tool-calling-llama-agent-with-a-custom-mcp-server-3bc057d27e85

*   GGUF format

```python
from huggingface_hub import snapshot_download

model_id = "meta-llama/Llama-3.2-3B-Instruct"
snapshot_download(
                    repo_id=model_id,
                    local_dir="./models/llama-3.2-3B-Instruct", 
                    revision="main"
                    )
```

conversion script provided by Llama.cpp to convert the model into GGUF format, as shown below:

```bash
python \
    convert_hf_to_gguf.py \
        ./models/llama-3.2-3B-Instruct \
            --outfile ./models/llama-3.2-3B-Instruct.gguf \
                --outtype f16 \
                --verbose
```

https://levelup.gitconnected.com/how-i-built-a-tool-calling-llama-agent-with-a-custom-mcp-server-3bc057d27e85

## `llama-cli`

*   CLI tool for accessing and experimenting with most of llama.cpp's functionality.

## Python



https://github.com/abetlen/llama-cpp-python

pip install llama-cpp-python

pip install \
    llama-cpp-python \
        --extra-index-url https://abetlen.github.io/llama-cpp-python/whl/cpu


```
# Linux and Mac
CMAKE_ARGS="-DGGML_BLAS=ON -DGGML_BLAS_VENDOR=OpenBLAS" \
  pip install llama-cpp-python
```

https://github.com/abetlen/llama-cpp-python

## Android

https://github.com/ggml-org/llama.cpp/blob/master/docs/android.md

```
cmake \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_SDK_ROOT/ndk/29.0.13599879/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_PLATFORM=android-28 \
  -DCMAKE_C_FLAGS="-march=armv8.7a" \
  -DCMAKE_CXX_FLAGS="-march=armv8.7a" \
  -DGGML_OPENMP=OFF \
  -DGGML_LLAMAFILE=OFF \
  -DLLAMA_CURL=OFF
  -B build-android

# OK
make
```

```
make --build build-android --config Release

make --install build-android --prefix {install-dir} --config Release
```

https://github.com/JackZeng0208/llama.cpp-android-tutorial

```
cmake \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_PLATFORM=android-28 \
  -DCMAKE_C_FLAGS="-march=armv8.7a" \
  -DCMAKE_CXX_FLAGS="-march=armv8.7a" \
  -DGGML_OPENMP=OFF \
  -DGGML_LLAMAFILE=OFF \
  -B build-android