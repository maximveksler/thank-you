import XCTest
@testable import DateFormatter

class DateFormatterTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(DateFormatter().text, "Hello, World!")
    }


    static var allTests : [(String, (DateFormatterTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
