import Foundation

public protocol Decrypter {
    init()

    /// Either returns the cracked plain-text password
    /// or, if unable to crack, then returns nil.
    /// - Parameter shaHash: The SHA-1 or SHA-256 digest that corresponds to the encrypted password.
    /// - Returns: The underlying plain-text password if `shaHash` was successfully cracked. Otherwise returns nil.
    func decrypt(shaHash: String) -> String?
}

func loadDictionaryFromDisk() throws -> [String : String] {
    guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }

        let IPdata = try Data(contentsOf: path)
        let OPjson = try JSONSerialization.jsonObject(with: IPdata)

        if let datatable: Dictionary = OPjson as? Dictionary<String, String> {
            return datatable
        } else {
            return [:]
    }
}

public struct CrackStation: Decrypter {
    
    public init() {
    }

    func Runscript(_ command: String) throws -> String {
    let RunTask = Process()
    let Runpipe = Pipe()
    
    RunTask.standardOutput = Runpipe
    RunTask.standardError = Runpipe
    RunTask.arguments = ["-c", command]
    RunTask.executableURL = URL(fileURLWithPath: "/bin/sh") //<--updated
    RunTask.standardInput = nil

    try RunTask.run() //<--updated
    
    let data = Runpipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
    }




public func decrypt(shaHash: String) -> String? {
    let filePath = FileManager.default.currentDirectoryPath + "/Sources/CrackStation/Resources/data.json"
    let fileManager = FileManager.default
    print("Test1")

    if fileManager.fileExists(atPath: filePath) {
            print("Test2")
            do{
                let datatable = try loadDictionaryFromDisk()
                let ans = datatable[shaHash] ?? nil
                print("Test3")
                return ans
            } catch {
                print("Test4")
                return "error"
            }
    } else {
            print("Test5")

            do{
                
                let result = try Runscript("python3 ../../Sources/CrackStation/Resources/databuild.py")
                let _ = try Runscript("mv data.json ../../Sources/CrackStation/Resources")
                if result.contains("No such file or directory") {
                    let _ = try Runscript("mv data.json Sources/CrackStation")
                }
                let datatable = try loadDictionaryFromDisk()
                let ans = datatable[shaHash] ?? "Not found"
                return ans
            } catch {
                return "error"
            }
        }
}

}


