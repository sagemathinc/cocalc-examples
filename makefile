PHONY = update

default: index

update:
	git pull --recurse-submodules
	git submodule foreach "git fetch origin; git checkout master; git reset --hard origin/master"

index:
	./index.py
