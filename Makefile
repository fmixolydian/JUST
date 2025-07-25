SRC     = src
DEST    = build
INCLUDE = include

compile: $(DEST)
	@ tools/compile $(SRC) $(DEST) $(INCLUDE)

watch:
	@ tools/watch

$(DEST):
	mkdir -p $(DEST)

clean:
	rm -rf $(DEST)/*

run: compile
	python3 -m http.server -d build