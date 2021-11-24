TARGET=../bin/ts
CPPFLAGS+=-Wall -O2
LDLIBS+=-pthread
#LDLIBS+=-lws2_32 # for mingw

all: ts tc

ts: ts.o mingw_net.o
	$(LINK.cpp) $^ $(LOADLIBES) $(LDLIBS) -o echo-server

tc: tc.o mingw_net.o
	$(LINK.cpp) $^ $(LOADLIBES) $(LDLIBS) -o echo-client

clean:
	rm -f echo-server echo-client *.o
