build:
	docker image build -t thompatterson/camera-preset-service:0.1 .

run:
	docker container run --rm -it -p 11000:8080 --name camera-preset-service thompatterson/camera-preset-service:0.1

export:
	docker export -o test.tgz camera-preset-service

push:
	docker push thompatterson/camera-preset-service:0.1
