BASENAME=legacy-cheatsheet
SRC_DIR=./src
OUT_DIR=.
OUT_FMT=png
SRC=$(SRC_DIR)/$(BASENAME).gv
OUT=$(OUT_DIR)/$(BASENAME).$(OUT_FMT)
GV=dot
FSWATCH=fswatch

all: build

auto:
	$(FSWATCH) $(SRC_DIR) "$(MAKE) build"

build: $(OUT)

$(OUT): $(SRC)
	$(GV) -T$(OUT_FMT) $(SRC) >$(OUT)

clean:
	rm -f $(OUT)

