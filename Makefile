NAME=grepper
VERSION=1.0.0

BUILD_DIR=bin
CRYSTAL=crystal
SHARDS=shards

prefix=/usr/local
bindir=$(prefix)/bin

all: $(BUILD_DIR)/grepper

$(BUILD_DIR)/grepper: src/main.cr src/searcher.cr
	$(SHARDS) build --production

clean: 
	rm -rf ./$(BUILD_DIR)

test:
	$(CRYSTAL) spec --verbose

install: $(BUILD_DIR)/grepper
	install -dm 755 $(DESTDIR)$(bindir)/
	install -m 755 $(BUILD_DIR)/grepper $(DESTDIR)$(bindir)/$(NAME)