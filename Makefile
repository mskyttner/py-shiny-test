#! make

build:
	docker build -t pys .

up:
	docker run --rm -it -p 8080:8080 pys
