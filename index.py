#!/usr/bin/env python3
# Copyright: Harald Schilly <hsy@sagemath.com>
# License: Apache 2.0
from pprint import pprint
import yaml
import json
import os
os.chdir(os.path.dirname(os.path.abspath(__file__)))

def update_meta(meta, new_meta):
    '''
    A simple dict update would overwrite/remove entries.
    '''
    if 'tags' in new_meta:
        meta['tags'].update(new_meta['tags'])
    if 'licenses' in new_meta:
        meta['licenses'].update(new_meta['licenses'])

def resolve_references(meta, docs):
    # append new documents and merge meta
    if 'references' in meta:
        for ref in meta['references']:
            new_meta, *new_docs = yaml.load_all(open(ref))
            resolve_references(new_meta, new_docs)
            update_meta(meta, new_meta)
            docs.extend(new_docs)
        del meta['references']
    return meta, docs

def debug(meta, docs):
    print("META:")
    pprint(meta)
    print("DOCS:")
    for doc in docs:
        pprint(doc)

def export_json(meta, docs):
    with open('index.json', 'w') as out:
        json.dump({'metadata': meta, 'documents': docs}, out, indent=1)

def main(index_fn):
    meta, *docs = yaml.load_all(open(index_fn))
    resolve_references(meta, docs)
    debug(meta, docs)
    export_json(meta, docs)

if __name__ == '__main__':
    main(index_fn = 'index.yaml')