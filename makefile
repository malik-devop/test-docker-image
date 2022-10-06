
ENVIRONNEMENT = "dev"
REPOSITORY = "test-docker-image"
ORGANIZATION = "malikdevops"
TAG = "v1.0.1"

test:
	etestdockerimagecho "testing"

docker-build:
	docker build -t ${ORGANIZATION}/${REPOSITORY}:${TAG} .
	
push:
	docker login -u="${USERNAME}" -p="${PASSWORD}"
	docker push ${ORGANIZATION}/${REPOSITORY}:${TAG}