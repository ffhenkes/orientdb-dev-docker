# orientdb-dev-docker
OrientDB enterprise Dockerfile for development purposes.

### Build

First download the desired orientdb version tar package, to the same Dockerfile local directory..

then..
```
$ docker build -t webverse/orientdb-dev-docker .
```

### Run

```
$ docker run -d -p 2424:2424 -p 2428:2428  --name orient webverse/orientdb-dev-docker
````
Alternatively you can use volumes:

`-v /your/path/here/:/docker/mapped/volumes/here`

### Browse

http://localhost:2428

### Docker exec to console

```
$ docker exec -i orientdb console.sh
```

