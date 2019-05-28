.DEFAULT_GOAL := all

export ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
export BUILD_DIR := ${ROOT_DIR}/build

clean:
	rm -Rf ${BUILD_DIR}

all:
	./mkeditorpacks/mkeditorpacks all

netradiant:
	./mkeditorpacks/mkeditorpacks netradiant
