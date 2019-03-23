#
# Makefile for sse-period
#
PROG=ascii
usage:
	@echo "make [edit|build|run]"

edit e:
	vi $(PROG).go

edit-html eh:
	vi index.html

build b:
	go build -o $(PROG) $(PROG).go

run r:
	@echo "make (run) [server|client|web]"

run-server rs:
	go run $(PROG).go
	#./$(PROG)

run-client rc:
	curl http://localhost:8080/sse

run-web rw:
	xdg-open http://localhost:8080

clean:
	rm -f $(PROG)

