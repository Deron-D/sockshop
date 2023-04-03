#ENV
USER_NAME=deron73
SOCK_SHOP_IMGS_VERSION=0.0.1

# DOCKER BUILDS
#build:: build-ws-carts build-ws-catalogue build-ws-catalogue-db
build:: build-ws-front-end

build-ws-carts::
#FROM openjdk:8-alpine
	cd ./src/carts/ && \
    mvn -DskipTests package && \
	docker build --no-cache -t $(USER_NAME)/ws-carts:$(SOCK_SHOP_IMGS_VERSION) .

build-ws-catalogue::
	cd ./src/catalogue/docker/catalogue && \
	pwd && \
    cp -r ../../images/  ./images/ && \
    cp -r ../../cmd/  ./cmd/ && \
    cp -r ../../*.go . && \
    cp -r  ../../vendor/ . && \
	docker build --no-cache -t $(USER_NAME)/ws-catalogue:$(SOCK_SHOP_IMGS_VERSION) .

build-ws-catalogue-db::
	cd ./src/catalogue/docker/catalogue-db && \
	docker build --no-cache -t $(USER_NAME)/ws-catalogue-db:$(SOCK_SHOP_IMGS_VERSION) .

build-ws-front-end::
	cd ./src/front-end && \
	npm install && \
	docker build --no-cache -t $(USER_NAME)/ws-front-end:$(SOCK_SHOP_IMGS_VERSION) .


# DOCKER PUSH
#push:: push-ws-carts push-ws-catalogue
push:: push-ws-carts

push-ws-carts::
	docker push $(USER_NAME)/ws-carts:$(SOCK_SHOP_IMGS_VERSION)
push-ws-catalogue::
	docker push $(USER_NAME)/ws-carts:$(SOCK_SHOP_IMGS_VERSION)