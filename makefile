SRCDIR = CSources
SHAREDLIB = libFactorial.so

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	SHAREDLIBPATH = /usr/lib
endif
ifeq ($(UNAME_S),Darwin)
	SHAREDLIBPATH = /usr/local/lib
endif

Factorial: $(SRCDIR)/Factorial.c
	clang -shared $(SRCDIR)/Factorial.c -o $(SHAREDLIB)
	cp libFactorial.so $(SHAREDLIBPATH)

clean:
	-rm -f $(SHAREDLIB)
	-rm -f $(SHAREDLIBPATH)/$(SHAREDLIB)
