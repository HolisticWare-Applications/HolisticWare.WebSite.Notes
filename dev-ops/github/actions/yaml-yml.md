# YAML YML

yaml-yml.md

https://github.com/ikkentim/SampSharp/actions/runs/411588833/workflow


```
name: Cake
on:
  push:
    branches: [ master ]
    paths-ignore: [ '*.md' ]
  pull_request:
    branches: [ master ]
    paths-ignore: [ '*.md' ]

jobs:
  build:
    runs-on: windows-latest

    steps:
      - name: Checkout repo
        uses: actions/checkout@v2

      - name: Checkout submodules
        run: git submodule update --init --recursive

      - name: Setup MSBuild.exe
        uses: microsoft/setup-msbuild@v1.0.2

      - name: Run the Cake script
        uses: cake-build/cake-action@v1
        with:
          script-path: build.cake
```

cake
          
https://gist.github.com/litichevskiydv/f516faf672d7224153a3ec24a11e7d0e