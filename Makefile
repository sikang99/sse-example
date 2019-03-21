#
# Makefile for sse by Stoney
#
EDITOR=vi
all: usage
usage:
	@echo "usage: make [edit|run|git]"
# ---------------------------------------------------------------------------
edit e:
	@echo "make (edit) [make|readme|peer|web|flutter|blockchain|study]"

edit-readme er:
	$(EDITOR) README.md

edit-make em:
	$(EDITOR) Makefile

# ---------------------------------------------------------------------------
PROG=sse
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
git g:
	@echo ""
	@echo "make (git) [update|login|tag|status]"
	@echo ""

git-update gu:
	git add *.md Makefile go.* *.go
	git commit -m "initial commit"
	#git remote remove Flutter.md
	#git commit -m "add some new Database.md"
	#git commit -m "add updates of *.md"
	git push

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v0.0.3
	git push --tags

git-status gs:
	git status
	git log --oneline -5
# ---------------------------------------------------------------------------
