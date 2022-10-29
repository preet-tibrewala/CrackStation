import hashlib
import json

datadict = {}

x=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9']

i=0
j=0
for j in x:
    for i in x:
        variable= i+''+j
        #print(variable)
        
        hash_object = hashlib.sha1(variable.encode()) 
        poc2hash = hash_object.hexdigest()
        #print(pbHash)
        datadict[poc2hash] = variable 

m=0
for m in x:

    hash_object = hashlib.sha1(m.encode())
    poc1hash = hash_object.hexdigest()
    datadict[poc1hash] = m
    

with open('data.json', 'w') as fp:
    json.dump(datadict, fp)

