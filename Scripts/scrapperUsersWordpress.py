import json
import sys

doc = json.loads(open(sys.argv[1],encoding="utf8").read())
array = doc['@graph'] #########
for elem in array:
        if 'slug' in elem:
            print(str(elem['slug']))
