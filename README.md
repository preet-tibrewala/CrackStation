# **Crackstation, a Decrypter Implementation**
SHA1 & SHA256 encoded password decrypter. 

Overview
--

This library is created to decrypt **unsalted password hashes** encrypted using SHA1 and SHA256 algorithms. It works for regular expression `[A-Za-z0-9?!]{1,3}`. 

Mission Statement
--

Password decryption can be useful in recovery of passwords which allows the successful decryption of key files. Password recovery can be important in some use cases where one has lost important databases, spreadsheets, documents, and other files due to encryption.

Installation
--

The [Swift Package Manager]( https://www.swift.org/package-manager) is "a tool for managing the distribution of Swift Code. It is integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."
Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:
```
dependencies:[
    .package(url:"https://github.com/preet-tibrewala/CrackStation.git",.upToNextMajor(from:"3.1.1"))
]
```

Usage
--
The API
--

The `init()` function loads the `data.json` file into a dictionary called `lookuptable`. The `data.json` file holds unsalted hashes and their plaintext password.


The `decrypt(shaHash: String)` takes SHA1 or SHA256 encrypted unsalted hashes as input and matches them to their respective values from lookuptable dictionary and returns the decrypted plaintext password.



An Example
--

The variable `decrypted` will have plaintext password of the `InputHash` which is `!!!` for the below-given case.
```
InputHash = "e84c538e7fe250730ef62de220c40dfa808d3008c0cdb437181564b88b8714b8"
decrypted = CrackStation().decrypt(shaHash: inputhash)
```
If the plaintext password will contain any character other than regular expression `[A-Za-z0-9?!]{1,3}` the API will not be able to crack it.

Author
--

Preet Dhiren Tibrewala