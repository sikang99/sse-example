#
# Makefile for sse-period
#
PROG=ascii
usage:
	@echo "make [edit|build|run]"

edit e:
	vi $(PROG).go

build b:
	go build -o $(PROG) $(PROG).go

run r:
	@echo "make (run) [server|client|web]"

run-server rs:
	go run $(PROG).go
	#./$(PROG)

run-client rc:
	curl http://localhost:3000

run-web rw:
	xdg-open http://localhost:3000

clean:
	rm -f $(PROG)

