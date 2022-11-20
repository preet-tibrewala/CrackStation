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

    func testMVPsha1_3() throws {

        let inputhash = "e1e154e5261dc0011fd40e84d2cad1566e9ccfe3"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "a!A")
    }

    func testMVPsha256_1() throws {

        let inputhash = "bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "Z")
    }
    func testMVPsha256_2() throws {

        let inputhash = "8982b44a300b2c1170ef77bbac5d691de2631fb64b4b617af0eb78327b300e6b"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "A!")
    }
    func testMVPsha256_3() throws {

        let inputhash = "e84c538e7fe250730ef62de220c40dfa808d3008c0cdb437181564b88b8714b8"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "!!!")
    }
}
