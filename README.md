# Examples for SMC

This mainly adds a categorization and meta-description layer on top of this and other example collections.

## Indexing

Nothing done yet, probably a simple `make` will call a script.

## Datamodel

* Goal: JSON for the SMC UI, such that user can select templates -- no need to think about the specific representation, only the elements that are the actually moving parts for such a selector.

* Parts
  * Filename/Directoryname
  * Title
  * Description
  * Tags for categorization
  * Centralized description of tags (?)

## Devnotes

If you forgot to `git clone --recursive`:

    git submodule update --init --recursive

If you want to update all submodules in one go, do something like

    git submodule foreach "git checkout master; git pull origin master"

## License

Unless otherwise noted, Apache 2.0


