# Docker

```
shut down all but the first docker-compose service
 docker-compose ps --services | tail +2 | xargs docker-compose stop
```
