# prantlf/plantuml

[Docker] image: Alpine Linux with Graphviz, JRE 8 and PlantUML

[![nodesource/node](http://dockeri.co/image/prantlf/plantuml)](https://hub.docker.com/repository/docker/prantlf/plantuml/)

[This image] allows you to generate images from [PlantUML] diagrams. It is built automatically on the top of the tag `8-jre-alpine` from the [openjdk repository], so that it always runs the latest update of [OpenJDK] in the latest [Alpine Linux]. [Graphviz] and [PlantUML] have to be updated from time to time by triggering a new build manually.

## Tags

The following [tags] are available for the `prantlf/plantuml` image:

- `latest`
- `jre8-alpine`

## Install

Download the latest image to your disk:

```
docker pull prantlf/plantuml
# or
docker pull prantlf/plantuml:jre8-alpine
```

## Use

Print usage description with command-line parameters:

```
docker run --rm -it prantlf/plantuml
```

For example, generate a diagram image for `diagram.puml`:

```
docker run --rm -it -v ${PWD}:/work -w /work plantuml diagram.puml
```

You can also put a [`run-plantuml`] script to `PATH`:

```
#!/binsh

docker run --rm -it -v ${PWD}:/work -w /work plantuml "$@"
```

and execute it from any location by supplying PlantUML parameters to it, for example:

```
run-plantuml diagram.puml
```

## Build, Test and Publish

The local image is built as `plantuml` and pushed to the docker hub as `prantlf/plantuml:jre8-alpine`.

Remove an old local image:

    make clean

Check the `Dockerfile`:

    make lint

Build a new local image:

    make build

Print the help for the diagram generator:

    make run-help

Generate an image for a diagram sample:

    make run-example

Tag the local image for pushing:

    make tag

Login to the docker hub:

    make login

Push the local image to the docker hub:

    make push

## License

Copyright (c) 2020 Ferdinand Prantl<br>
Copyright (c) 2018-2019 miy4

Licensed under the MIT license.

[Docker]: https://www.docker.com/
[This image]: https://hub.docker.com/repository/docker/prantlf/plantuml
[`tags`]: https://hub.docker.com/repository/docker/prantlf/plantuml/tags
[openjdk repository]: https://hub.docker.com/_/openjdk
[OpenJDK]: https://openjdk.java.net/
[Alpine Linux]: https://alpinelinux.org/
[PlantUML]: https://plantuml.com/
[Graphviz]: https://www.graphviz.org/
[`run-plantuml`]: examples/run-plantuml
