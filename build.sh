TYPE=$1
VERSION=$2
LIBC=$3

if [ -z "$TYPE" ];
then
    echo "Type: liberica, temurin, openj9";
    exit 0;
fi

if [ -z "$LIBC" ];
then
    echo "Type: glibc, musl";
    echo "Defaulting to glibc."
    LIBC=glibc
fi

FOLDER="$TYPE/$VERSION"

if [ $TYPE = "liberica" ]; then
    docker buildx build -t happyareabean/pterodactyl-liberica:$VERSION-$LIBC . -f $FOLDER-$LIBC/Dockerfile
fi

if [ $TYPE = "temurin" ]; then
    docker buildx build -t happyareabean/pterodactyl-temurin:$VERSION . -f $FOLDER/Dockerfile
fi

if [ $TYPE = "openj9" ]; then
    docker buildx build -t happyareabean/pterodactyl-openj9:$VERSION . -f $FOLDER/Dockerfile
fi
