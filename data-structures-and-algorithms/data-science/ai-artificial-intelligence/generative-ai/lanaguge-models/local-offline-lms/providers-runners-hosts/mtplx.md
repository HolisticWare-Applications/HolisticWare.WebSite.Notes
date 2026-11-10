mtplx

```shell
brew install youssofal/mtplx/mtplx
```

*   https://mtplx.com/docs/quickstart/

*   Models

    *   download into

        ```
        ~/.mtplx/models
        ```

        MTPLX_MODEL_DIR

```shell
# what is cached, sizes, validation
mtplx models

# download a model safely
mtplx \
    pull \
        Youssofal/Qwen3.8-27B-MTPLX-Optimized-Speed

# compatibility report before anything runs
mtplx \
    inspect \
        Youssofal/Qwen3.8-27B-MTPLX-Optimized-Speed \
        --json
```

```
Youssofal/Qwen3.8-27B-MTPLX-
```

*   https://github.com/youssofal/mtplx


```shell
mtplx \
    pull \
        Youssofal/Qwen3.8-Flash-Next-MTPLX-Optimized-Speed
mtplx \
    pull \
        Youssofal/Qwen3.8-Flash-Next-MTPLX-Bare-Speed
```


```shell
mtplx forge discover
```
