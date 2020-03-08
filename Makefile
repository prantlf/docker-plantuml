clean ::
	docker image rm plantuml

lint ::
	docker run --rm -i \
		-v ${PWD}/.hadolint.yaml:/bin/hadolint.yaml \
		-e XDG_CONFIG_HOME=/bin hadolint/hadolint \
		< Dockerfile

build ::
	docker build -t plantuml .

run ::
	docker run --rm -it -a stdin -a stdout -a stderr -v ${PWD}:/work -w /work plantuml

tag ::
	docker tag plantuml prantlf/plantuml:jre8-alpine

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/plantuml:jre8-alpine
