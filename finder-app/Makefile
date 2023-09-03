CC=aarch64-none-linux-gnu-gcc
TARGET=writer
SRC=writer.c
OBJECTS=writer.o

CFLAGS=-Wall -Wextra -g

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^

$(OBJECTS): $(SRC)
	$(CC) $(CFLAGS) -c -o $@ $^
clean:
	rm -rf $(OBJECTS) $(TARGET)
