git clone $1 build

cd build

docker build -t $2 .

docker push $2






