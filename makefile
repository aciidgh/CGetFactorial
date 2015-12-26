Factorial: CSources/Factorial.c
	clang -shared CSources/Factorial.c -o libFactorial.so

clean:
	-rm -f libFactorial.so
