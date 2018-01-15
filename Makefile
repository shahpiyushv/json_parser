CC := gcc
CFLAGS := -O2 -I.

all: json_parser

json_parser: src/json_parser.c
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

clean:
	@rm -f *.o json_gen
