CC=cc
CFLAGS=-Wall -g -I.
LDFLAGS=
SOURCES=ex1.c
OBJECTS=$(SOURCES:.c=.o)
DEPS=
EXECUTABLE=ex1

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c .o $(DEPS):
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
			rm -f ${EXECUTABLE} && rm -rf *.dSYM && rm -f *.o
