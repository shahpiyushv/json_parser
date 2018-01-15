CC := gcc
CFLAGS := -O2 -Iinclude -Ijsmn -DJSMN_PARENT_LINKS -DJSMN_STRICT

all: json_parser

json_parser: src/json_parser.c jsmn/jsmn.c tests/main.c
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

clean:
	@rm -f *.o json_gen
