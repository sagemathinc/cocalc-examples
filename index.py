#!/usr/bin/env python3
# Copyright: Harald Schilly <hsy@sagemath.com>
# License: Apache 2.0
from pprint import pprint
import yaml
import json
import os
import itertools as it
# to make all "src" absolute paths!
ROOT = os.path.dirname(os.path.abspath(__file__))
os.chdir(ROOT)


# TODO this is silly code, please fix it ...

def update_meta(meta, new_meta):
    '''
    A simple dict update would overwrite/remove entries.
    '''
    if 'tags' in new_meta:
        meta['tags'].update(new_meta['tags'])
    if 'licenses' in new_meta:
        meta['licenses'].update(new_meta['licenses'])
    if 'categories' in new_meta:
        # if you introduce a new category, it must be unique
        assert all(nm not in meta['categories'].keys() for nm in new_meta['categories'].keys())
        meta['categories'].update(new_meta['categories'])


# TODO this is just for a unique id for each document. maybe make it stable?
ID = it.count(0)
all_ids = set()
def init_doc(docs, prefix):
    for doc in docs:
        doc['src'] = os.path.join(prefix, doc['src'])
        if 'thumbnail' in doc:
            doc['thumbnail'] = os.path.join(prefix, doc['thumbnail'])
        if 'id' in doc:
            assert doc['id'] not in all_ids
            all_ids.add(doc['id'])
        else:
            newid = 'doc-{}'.format(next(ID))
            assert newid not in all_ids
            all_ids.add(newid)
            doc['id'] = newid

# prefix is the path to prefix
def resolve_references(meta, docs, prefix=''):
    # append new documents and merge meta
    if 'references' in meta:
        for ref in meta['references']:
            prefix = os.path.join(prefix, os.path.dirname(ref))
            print("resolve_references prefix={}".format(prefix))
            new_meta, *new_docs = yaml.load_all(open(ref))
            init_doc(new_docs, prefix)
            resolve_references(new_meta, new_docs, prefix=prefix)
            update_meta(meta, new_meta)
            docs.extend(new_docs)
        del meta['references']
    return meta, docs

def consistency_checks(meta, docs):
    cats = meta['categories']
    for doc in docs:
        assert 'title' in doc, "doc {} misses a title".format(doc.id)
        assert 'category' in doc, "doc {} misses category".format(doc['title'])
        assert doc['category'] in cats

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
    init_doc(docs, ROOT)
    resolve_references(meta, docs, prefix=ROOT)
    debug(meta, docs)
    export_json(meta, docs)
    consistency_checks(meta, docs)

if __name__ == '__main__':
    main(index_fn = 'index.yaml')