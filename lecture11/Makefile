run: build
	./serial_proto

debug: build_debug
	gdb serial_proto

build:
	gcc serial_proto.c -o serial_proto

build_debug:
	gcc serial_proto.c -g -o serial_proto
