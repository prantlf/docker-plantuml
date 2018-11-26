docker-plantuml
==========

Docker container with Alpine Linux, Java and PlantUML.  
[PlantUML](http://plantuml.com/) is a Java program which generates UML diagrams from DSL-code.

### Installation

To pull:

```sh
$ docker pull miy4/plantuml
```

To build:

```sh
$ git clone https://github.com/miy4/docker-plantuml.git
$ cd docker-plantuml
$ docker build -t miy4/plantuml .
```

### Usage

```sh
$ docker run -v ${PWD}:/work -w /work --rm [PLANTUML OPTIONS and ARGUMENTS]
```

or

```sh
$ run-plantuml [PLANTUML OPTIONS and ARGUMENTS]
```

### Example

```sh
$ run-plantuml -tpng -charset utf-8 sequece_diagram.uml
```
