USER_NAME=9057210458

build_prom:
	cd ../monitoring/prometheus; docker build -t ${USER_NAME}/prometheus:1.0 .

build_ui:
	cd src/ui; bash docker_build.sh; cd -
build_comment:
	cd src/comment; bash docker_build.sh; cd -
build_post-py:
	cd src/post-py; bash docker_build.sh; cd -

build_all: build_prom build_ui build_comment build_post-py


push_prom:
	docker push ${USER_NAME}/prometheus:1.0
push_ui:
	docker push ${USER_NAME}/ui:1.0
push_comment:
	docker push ${USER_NAME}/comment:1.0
push_post:
	docker push ${USER_NAME}/post:1.0

push_all: push_prom push_ui push_comment push_post
