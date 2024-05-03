# voclibcurl

This library is a [libcurl](https://curl.se/libcurl/) wrapper for [Vishap Oberon Compiler](https://github.com/vishaps/voc)

## Installation

This library has been tested on [FreeBSD](https://FreeBSD.org) running `voc v2.1.2` from Ports/Packages

You *do* need `curl` installed from Ports/Packages

## Using git

1. Clone this repository
2. run `make`
3. You should have the symbol file at `build/curl.sym`
4. You may use the source at `src/curl.Mod`
5. You may run `build/curlTest` to see some tests.

Technically, this library should be used with [`vipack`](https://github.com/vishaps/vipack), but who has the time eh :)
