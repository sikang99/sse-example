#
# Makefile for sse by Stoney, sikang99@gmail.com
#
EDIT=vi
PROG=period
all: usage
usage:
	@echo "usage: make [edit|build|run]"
# ---------------------------------------------------------------------------
edit e:
	@echo "make (edit) [make|go]"

edit-make em:
	$(EDIT) Makefile

edit-go  eg:
	$(EDIT) $(PROG).go
# ---------------------------------------------------------------------------
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
# ---------------------------------------------------------------------------
