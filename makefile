PHONY = update

default: index

update:
	git submodule foreach "git checkout master; git pull origin master"

index:
	./index.py
