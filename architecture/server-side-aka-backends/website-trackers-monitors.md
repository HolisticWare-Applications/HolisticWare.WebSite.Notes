# WebSite trackers/monitors

website-trackers-monitors.md

## Watchme

*   

*   https://vsoch.github.io/watchme/install/

### Installation

```
pip install watchme
```

```
git clone https://www.github.com/vsoch/watchme
cd watchme
python setup.py install
```

Check installation:

```
which watchme
watchme
```

#### Installing Extras

To install all of watchme’s exporters and watchers:

```
pip install watchme[all]
```

To install all watchers only:

```
pip install watchme[watchers]
```

or a specific watcher task group:

```
pip install watchme[watcher-urls-dynamic]
pip install watchme[watcher-psutils]
```