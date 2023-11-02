import os
import json

name = "https://eoepca.org/media_portal/images/logo6_med.original.png"

new_name = os.path.dirname(name)
new_name = name.replace(new_name + "/", "")



#print(new_name)

test ="here.png"
test2 = test.replace(".", "-NEW.")

print(test2)
print(test)

#f = open("../stac/catalog.json")
#y = json.load(f)
#y1 = [y['links'][0]['href']]
#print(y1)
file_dir = "../stac"
fileLocation = open(file_dir + "/catalog.json")
# open catalog.json
print(fileLocation)
jsonFile = json.load(fileLocation)