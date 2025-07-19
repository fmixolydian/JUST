SRC     = src
DEST    = build
INCLUDE = include

$(DEST):
	mkdir -p $(DEST)

compile: $(DEST)
	@ ./compile.tcl $(SRC) $(DEST) $(INCLUDE)

clean:
	rm -rf $(DEST)/*

run: compile
	python3 -m http.server -d build

watch:
	while true; 