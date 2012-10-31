import json, sys

from pprint import pprint

json_data=open(sys.argv[1])

data = json.load(json_data)
pprint(data)
json_data.close()
