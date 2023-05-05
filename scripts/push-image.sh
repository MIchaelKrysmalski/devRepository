set -u # or set -o nounset
: "$1"
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

export DIR=$1
echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker rmi $CONTAINER_REGISTRY/$DIR:1
docker push $CONTAINER_REGISTRY/$DIR:1