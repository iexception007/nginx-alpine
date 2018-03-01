REPO=wisecloud-nginx-alpine
VERSION=latest


build:
	docker build -t ${REPO}:${VERSION} .
