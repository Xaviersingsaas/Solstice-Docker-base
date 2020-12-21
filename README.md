``` bash
docker build -t solstice .
```

``` bash
docker create solstice:latest
```

``` bash
docker run -t -d --name my_solstice solstice

```

``` bash
docker exec -i -t my_solstice /bin/bash
```
