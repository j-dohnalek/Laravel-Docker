sudo rm -rf ./deploy/mysql/data/*
touch ./deploy/mysql/data/.gitignore
echo "!.gitignore" > ./deploy/mysql/data/.gitignore 

sudo rm -rf ./deploy/redis/data/*
touch ./deploy/redis/data/.gitignore
echo "!.gitignore" > ./deploy/mysql/redis/.gitignore 