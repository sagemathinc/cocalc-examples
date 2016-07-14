PHONY = update

update:
	git submodule foreach "git checkout master; git pull origin master"

