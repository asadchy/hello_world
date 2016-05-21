objects := hello.o
CROSS_COMPILE := native

ifneq ($(CROSS_COMPILE),native)
	CC := $(CROSS_COMPILE)gcc
endif

hello : $(objects)
	$(CC) -o hello $(CFLAGS) $(objects)

.PHONY : clean
clean :
	-rm *.o hello
