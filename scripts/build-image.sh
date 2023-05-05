set -u # or set -o nounset
: "$1"
: "$CONTAINER_REGISTRY"
: "$VERSION"

export DIR=$1
echo $CONTAINER_REGISTRY/$DIR:$VERSION
docker build -t $CONTAINER_REGISTRY/$DIR:2 --file ./$DIR/Dockerfile ./$DIR