all: main

main: dummy
	cargo build

dummy: src/dummy.o src/libmain.a
	$(CXX) -o bin/$@ $^

src/libmain.a: src/main.o
	ar rvs $@ $^

.PHONY: run run_dummy
run:
	cargo run

run_dummy:
	bin/dummy

clean:
	rm -f src/*.a
	rm -f src/*.o
	rm -f bin/dummy
	cargo clean
