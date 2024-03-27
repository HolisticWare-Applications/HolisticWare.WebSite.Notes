# ML.net

ml-dotnet.md

*   https://github.com/Wintellect/DataScienceExamples

*   python [../../diverse/python/installation.md](../../diverse/python/installation.md)

*   ML.NET Model Builder

    *   https://marketplace.visualstudio.com/items?itemName=MLNET.07&ssr=false#review-details

    *   https://dotnet.microsoft.com/apps/machinelearning-ai/ml-dotnet/model-builder

    ```
    mlnet \
        auto-train \
        --task binary-classification \
        --dataset "wikipedia-detox-250-line-data.tsv" \
        --label-column-name "Sentiment" \
        --max-exploration-time 10
    ```

evaluation metrics for those top 5 models, including 
    
*   AUC, 
    
*   AUPRC

*   F1-score 

*   https://docs.microsoft.com/en-us/dotnet/machine-learning/resources/glossary#accuracy