clean ::
	docker image rm plantuml

lint ::
	docker run --rm -i \
		-v "${PWD}"/.hadolint.yaml:/bin/hadolint.yaml \
		-e XDG_CONFIG_HOME=/bin hadolint/hadolint \
		< Dockerfile

build ::
	docker build -t plantuml .

run-help ::
	docker run --rm -it plantuml

run-example ::
	docker run --rm -it -v ${PWD}:/work -w /work plantuml -v examples/hello-sequence.puml

tag ::
	docker tag plantuml prantlf/plantuml:jre8-alpine
	docker tag plantuml prantlf/plantuml:latest

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/plantuml:jre8-alpine
	docker push prantlf/plantuml:latest
