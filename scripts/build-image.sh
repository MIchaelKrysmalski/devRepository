set -u # or set -o nounset
: "$1"
: "$CONTAINER_REGISTRY"
: "$VERSION"

export DIR=$1
echo $CONTAINER_REGISTRY/$DIR:$VERSION
docker rmi $CONTAINER_REGISTRY/$DIR:1
docker build -t $CONTAINER_REGISTRY/$DIR:1 --no-cache --file ./$DIR/Dockerfile ./$DIR