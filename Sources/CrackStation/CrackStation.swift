import Foundation

public protocol Decrypter {
    init()

    /// Either returns the cracked plain-text password
    /// or, if unable to crack, then returns nil.
    /// - Parameter shaHash: The SHA-1 or SHA-256 digest that corresponds to the encrypted password.
    /// - Returns: The underlying plain-text password if `shaHash` was successfully cracked. Otherwise returns nil.
    func decrypt(shaHash: String) -> String?
}
public struct CrackStation: Decrypter {
    public init() {
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
    
    public func decrypt(shaHash: String) -> String? {
        do{
                let datatable = try loadDictionaryFromDisk()
                let ans = datatable[shaHash] ?? nil
                
                return ans
            } catch {
                
                return nil
            }
        } 
}




