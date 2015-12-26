SRCDIR = CSources
SHAREDLIB = libFactorial.so
Factorial: $(SRCDIR)/Factorial.c
	clang -shared $(SRCDIR)/Factorial.c -o $(SHAREDLIB)
	cp libFactorial.so /usr/local/lib

clean:
	-rm -f $(SHAREDLIB)
	-rm -f /usr/local/lib/$(SHAREDLIB)
