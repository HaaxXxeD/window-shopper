//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Anonymous on 11/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testRes() {
        XCTAssert(wageCalc.calculation(forWage: 25, andPrice: 100) == 4)
        XCTAssert(wageCalc.calculation(forWage: 25.45, andPrice: 100.54) == 4)
    }

}
