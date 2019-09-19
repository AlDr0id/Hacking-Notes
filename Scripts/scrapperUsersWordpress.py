import json
import sys

#################################################################################################
# Simple script to obtain the usernames from a json file from /wp-json/wp/v2/users in Wordpress #
#################################################################################################

doc = json.loads(open(sys.argv[1]).read())
for elem in array:
        if 'slug' in elem:
            print(str(elem['slug']))
