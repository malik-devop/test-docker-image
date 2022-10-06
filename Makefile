ENVIRONMENT="dev"
REPOSITORY=test-docker-image
ORGANIZATION=malikdevops
TAG = v1

unit-tests:
	
	echo "Exécution des tests unitaires"
	
build-image:

	@echo "Exécution du build ..."
	docker build -t "${ORGANIZATION}/${REPOSITORY}:${TAG}" .	

push:
	docker login -u=malikdevops -p=dckr_pat_9kF7IhlhGBuRWSO_CcRiE4PO60o
	docker push ${ORGANIZATION}/${REPOSITORY}:${TAG}