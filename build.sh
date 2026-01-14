TYPE=$1
VERSION=$2

if [ -z "$TYPE" ];
then
    echo "Type: liberica, temurin";
    exit 0;
fi

FOLDER="$TYPE/$VERSION"

if [ $TYPE = "liberica" ]; then
    docker buildx build -t happyareabean/pterodactyl-liberica:$VERSION-glibc . -f $FOLDER/Dockerfile
fi

if [ $TYPE = "temurin" ]; then
    docker buildx build -t happyareabean/pterodactyl-temurin:$VERSION . -f $FOLDER/Dockerfile
fi
