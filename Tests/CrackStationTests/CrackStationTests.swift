import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testPOC1() throws {
        
        let inputhash = "d160e0986aca4714714a16f29ec605af90be704d"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "L")
    }
    func testPOC2() throws {
        
        let inputhash = "39005d92752d56310b3a357f42b57f304621689a"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "KA")
    }
}
