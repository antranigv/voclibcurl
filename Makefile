.POSIX:

.PHONY: build test

export CFLAGS=-I/usr/local/include/ -L/usr/local/lib -lcurl

build:
	@if [ ! -d build ]; then \
		mkdir build; \
	fi
	@cd build; voc -rs ../src/curl.Mod

test: build
	@cd build; voc ../test/libcurl_test.Mod -m
	@cd build; ./curlTest

clean:
	rm -rf build
