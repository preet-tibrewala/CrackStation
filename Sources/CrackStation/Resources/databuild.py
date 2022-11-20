import hashlib
import json

d = {}

x=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9','?','!']

i=0
j=0
k=0
m=0
for k in x:
    hashpoc1 = hashlib.sha1(k.encode())
    poc1hash = hashpoc1.hexdigest()
    hash2poc1 = hashlib.sha256(k.encode())
    sha256poc1 = hash2poc1.hexdigest()
    d[sha256poc1] = k
    d[poc1hash] = k
    m=m+2
    for j in x:
        m=m+2
        var = j+''+k
        poc2hash= hashlib.sha1(var.encode())
        sha1poc2= poc2hash.hexdigest()
        d[sha1poc2] = var

        pocs256 = hashlib.sha256(var.encode())
        sha256poc2 = pocs256.hexdigest()
        d[sha256poc2] = var
        for i in x:
            m=m+2
            variable= i+''+j+''+k
            #print(variable)
            hash_object = hashlib.sha1(variable.encode()) 
            mvp2hash = hash_object.hexdigest()
            hash2= hashlib.sha256(variable.encode())
            mvp1hash = hash2.hexdigest()
            #print(pbHash)
            d[mvp2hash] = variable
            d[mvp1hash] = variable 


print(m)

    

with open('datatest.json', 'w') as fp:
    json.dump(d, fp)

