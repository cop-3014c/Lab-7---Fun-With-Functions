HEADERS       := math.h
IMPLEMS       := math.cpp
DRIVER        := main.cpp
FILES         := $(DRIVER) $(IMPLEMS) $(HEADERS)

.PHONY: format build all clean

all: format build

format:
	@clang-format $(FILES) -i -style=google -verbose

build: $(FILES)
	@g++ -std=c++17 $(IMPLEMS) $(DRIVER)

clean:
	@rm a.out