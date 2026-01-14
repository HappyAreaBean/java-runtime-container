TYPE=$1
VERSION=$2

if [ -z "$TYPE" ];
then
    echo "Type: liberica, temurin, openj9";
    exit 0;
fi

FOLDER="$TYPE/$VERSION"

if [ $TYPE = "liberica" ]; then
    docker buildx build -t happyareabean/pterodactyl-liberica:$VERSION-glibc . -f $FOLDER/Dockerfile
fi

if [ $TYPE = "temurin" ]; then
    docker buildx build -t happyareabean/pterodactyl-temurin:$VERSION . -f $FOLDER/Dockerfile
fi

if [ $TYPE = "openj9" ]; then
    docker buildx build -t happyareabean/pterodactyl-openj9:$VERSION . -f $FOLDER/Dockerfile
fi
