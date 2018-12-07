#!/usr/bin/env bash

# make folder for samples
mkdir ./tmp
mkdir ./tmp/sample-json/

# summary json has all components incidents maintenance etc
curl -o ./tmp/sample-json//box-summary.json https://status.box.com/api/v2/summary.json

# so far we'd looked at:
# components
curl -o ./tmp/sample-json//box-components.json https://status.box.com/api/v2/components.json
# unresolved incidents 
curl -o ./tmp/sample-json//box-unresolved.json https://status.box.com/api/v2/incidents/unresolved.json

# MIT unresolved incidents
curl -o ./tmp/sample-json//mit-unresolved.json https://3down.mit.edu/api/v2/incidents/unresolved.json