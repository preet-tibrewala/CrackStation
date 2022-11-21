# **Crackstation, a Decrypter Implementation**
SHA1 & SHA256 ecrypted password decrypter. 

Overview
--

This library is created to decrypt **unsalted password hashes** encrypted using SHA1 and SHA256 algorithms. It works for regular expresion `[A-Za-z0-9?!]{1,3}`. 

Mission Statement
--

Password decryption can be useful in password recovery which allows succesful decryption of key files. Password recovery can be important in some use cases where one has lost important databases, spreadsheets, documents, and other files due to encryption.

Installation
--

The [Swift Package Manager]( https://www.swift.org/package-manager) is " a tool for managing the distribution of Swift Code. It's intergated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."
Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:
```
dependencies:[
    .package(url:"https://github.com/preet-tibrewala/CrackStation.git",.upToNextMajor(from:"3.1.0"))
]
```

Usage
--
The API
--

The `init()` function loads the `data.json` file into a dictionary called `lookuptable`. 
The `data.json` file holds unsalted hashes and their plaintextpassword.
The `decrypt(shaHash: String)` takes SHA1 or SHA256 encrypted unsalted hashes as input and matches them to their respective values from lookuptable dictionary and returns the decrypted plaintext password.`# **Crackstation, a Decrypter Implementation**
SHA1 & SHA256 encrypted password decrypter. 

Overview
--

This library is created to decrypt **unsalted password hashes** encrypted using SHA1 and SHA256 algorithms. It works for regular expression `[A-Za-z0-9?!]{1,3}`. 

Mission Statement
--

Password decryption can be useful in password recovery which allows the successful decryption of key files. Password recovery can be important in some use cases where one has lost important databases, spreadsheets, documents, and other files due to encryption.

Installation
--

The [Swift Package Manager]( https://www.swift.org/package-manager) is " a tool for managing the distribution of Swift Code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."
Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:
```
dependencies:[
    .package(url:"https://github.com/preet-tibrewala/CrackStation.git",.upToNextMajor(from:"3.1.0"))
]
```

Usage
--
The API
--

The `init()` function loads the `data.json` file into a dictionary called `lookuptable`. 
The `data.json` file holds unsalted hashes and their plaintext password.
The `decrypt(shaHash: String)` takes SHA1 or SHA256 encrypted unsalted hashes as input and matches them to their respective values from lookuptable dictionary and returns the decrypted plaintext password.`lookupTable` holds Key(hash) Value(plaintext) pairs.

An Example
--

The variable `decrypted` will have plaintext password of the `InputHash` which is `!!!` for the below given case
```
InputHash = "e84c538e7fe250730ef62de220c40dfa808d3008c0cdb437181564b88b8714b8"
decrypted = CrackStation().decrypt(shaHash: inputhash)
```

Author
--

Preet Dhiren Tibrewala
Final Release for MVP: 3.1.0
lookupTable` holds Key(hash) Value(plaintext) pairs.

An Example
--

The variable `decrypted` will have plaintext password of the `InputHash` which is `!!!`
```
InputHash = "e84c538e7fe250730ef62de220c40dfa808d3008c0cdb437181564b88b8714b8"
decrypted = CrackStation().decrypt(shaHash: inputhash)
```

Author
--

Preet Dhiren Tibrewala
Final Release for MVP: 3.1.0
