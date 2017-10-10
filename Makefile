
all: mm16 mm32 mm64 nbmm

mm16: mm.cpp
	g++ mm.cpp -o mm16 -static -Iinclude util/m5/m5op_x86.S -DBLOCK_SIZE=16 -O3

mm32: mm.cpp
	g++ mm.cpp -o mm32 -static -Iinclude util/m5/m5op_x86.S -DBLOCK_SIZE=32 -O3

mm64: mm.cpp
	g++ mm.cpp -o mm64 -static -Iinclude util/m5/m5op_x86.S -DBLOCK_SIZE=64 -O3

nbmm: mm.cpp
	g++ mm.cpp -o nbmm -static -Iinclude util/m5/m5op_x86.S -O3

clean:
	rm -f mm16 mm32 mm64 nbmm
