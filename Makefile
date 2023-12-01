SRC_DIR := src
BIN_DIR := bin
RUST_FILES := $(wildcard $(SRC_DIR)/*.rs)
BINS := $(patsubst $(SRC_DIR)/%.rs,$(BIN_DIR)/%,$(RUST_FILES))

.PHONY: all clean

all: $(BINS)

$(BIN_DIR)/%: $(SRC_DIR)/%.rs
	rustc $< -o $@

clean:
	rm -f $(BINS)

