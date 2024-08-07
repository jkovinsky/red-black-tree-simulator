PYTHON_CFLAGS = $(shell python3-config --cflags)
PYTHON_LFLAGS = $(shell python3-config --ldflags --embed)

rbt: main.cpp rbt.cpp rbt.hpp
	g++ -std=c++2a -O3 -Wall -Wextra -g $(PYTHON_CFLAGS) -o rbt main.cpp rbt.cpp $(PYTHON_LFLAGS)

.PHONY: clean

clean:
	@rm -f rbt main.o rbt.o .DS_Store ./plots/.DS_store
	@rm -r rbt.dSYM




