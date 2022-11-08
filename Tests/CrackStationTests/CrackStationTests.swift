import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testPOC1() throws {
        
        let inputhash = "d160e0986aca4714714a16f29ec605af90be704d"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "L")
    }
    func testPOC2_0() throws {
        
        let inputhash = "39005d92752d56310b3a357f42b57f304621689a"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "KA")
    }
    func testPOC2_1() throws {
        
        let inputhash = "7a882d0f4e26ba5810f68081d5c3ca6a1fd8a8ea"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "1r")
    }
    func testPOC2_2() throws {
        
        let inputhash = "9a79be611e0267e1d943da0737c6c51be67865a0"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "99")
    }
    
}
