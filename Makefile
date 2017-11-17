CC=/home2/jlp/gcc-linaro-5.4.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++
#CC=../../gcc-linaro-5.4.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++

all: blackscholes streamcluster

blackscholes: blackscholes.c
	$(CC) -Iinclude --std=c++11 -static blackscholes.c util/m5/m5op_arm_A64.S -o blackscholes -O3

streamcluster: streamcluster.cpp
	$(CC) -Iinclude --std=c++11 -static streamcluster.cpp util/m5/m5op_arm_A64.S -o streamcluster -O3
