# Docker development container

Used to edit data only docker container.

## Build

```
docker build -t gregdel/dev .
```

## Use

```
docker run -it --rm --volumes-from DATA_CONTAINER gregdel/dev
```
