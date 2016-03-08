CC = g++
LD = g++

PYVERSION = 2.7
PYPATH = /System/Library/Frameworks/Python.framework/Versions/$(PYVERSION)

CFLAGS = -Wall -O3 -std=c++14 -fPIC
LIBS = -stdlib=libc++ -L$(PYPATH)/lib/python$(PYVERSION) -lpython
INCLUDE = -Iinclude -I$(PYPATH)/include/python$(PYVERSION)
OBJS  = $(patsubst src/%.cc,lib/%.o,$(wildcard src/*.cc))
EXECS = $(patsubst exe/%.cc,bin/%,$(wildcard exe/*.cc))
EXEOBJS  = $(patsubst exe/%.cc,lib/%.o,$(wildcard exe/*.cc))
SOLIB = lib/AddTwo.so


all: $(OBJS) $(EXEOBJS) $(SOLIB) $(EXECS)

lib/%.so : $(OBJS)
	$(CC) -Wall -shared $(LIBS) $(OBJS) -o $@

lib/%.o : src/%.cc
	$(CC) -Wall $(CFLAGS) $(INCLUDE) -c $< -o $@

lib/%.o : exe/%.cc
	$(CC) -Wall $(CFLAGS) $(INCLUDE) -c $< -o $@


bin/% : $(SOLIB) lib/%.o
	$(LD) $(LIBS) $(SOLIB) lib/$*.o -o bin/$*





clean:
	rm -f $(EXECS) lib/*.o $(SOLIB)
	rm -rf ./build

