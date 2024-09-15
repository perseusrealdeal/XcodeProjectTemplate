//
//  XcodeTemplateProjectTests.swift
//  XcodeTemplateProjectTests
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  Licensed under the MIT license. See LICENSE file.
//  All rights reserved.
//

import XCTest
@testable import XcodeTemplateProject

final class XcodeTemplateProjectTests: XCTestCase {

    override func setUp() {
        super.setUp()

        log.message("[\(type(of: self))].\(#function)")
    }

    // func test_zero() { XCTFail("Tests not yet implemented in \(type(of: self)).") }

    func test_the_first_success() { XCTAssertTrue(true, "It's done!") }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests.
        XCTAssertEqual(XcodeTemplateProject().text, "Hello, World!")
    }
}
