echo "First arg: $1"
rm -rf prod-customer
rm -rf prod-tech-admin
docker build -t $1 .
docker run -d $1
CONTAINER_ID=$(docker ps -alq)
# If you do not know the exact file name, you'll need to run "ls"
# FILE=$(docker exec CONTAINER_ID sh -c "ls /path/*.zip")
docker cp $CONTAINER_ID:/usr/src/app/prod-customer .
docker cp $CONTAINER_ID:/usr/src/app/prod-tech-admin .
docker stop $CONTAINER_ID

