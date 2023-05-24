
.PHONY : all
all: proto

proto:
	@docker run --platform linux/amd64 --rm -v `pwd`:/defs namely/protoc-all:1.51_1 -f api/grpc/v1/api.proto -l go -o .