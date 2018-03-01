REPO=wisecloud-nginx-alpine
VERSION=latest

build:
	docker build -t $(REPO):$(VERSION) .

test:
	-docker rm -f my-nginx
	docker run -p 81:80 --name my-nginx -d $(REPO):$(VERSION)