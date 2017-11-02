# docker-rabbitmq

docker build -t rabbit .

docker run -d --hostname my-rabbit --name mq -p 15672:15672 rabbit

