//
//  CarTests.swift
//  SwiftTravisCITests
//
//  Created by Eduardo Fornari on 16/11/18.
//  Copyright © 2018 Some Company. All rights reserved.
//

import XCTest

@testable import SwiftTravisCI
class CarTests: XCTestCase {

    var ferrari: Car!
    var jeep: Car!

    // This method is called before the invocation of each test method in the class.
    override func setUp() {
        ferrari = Car(type: CarType.Sport, transmissionMode: .Neutral)
        jeep = Car(type: CarType.Sport, transmissionMode: .Neutral)
    }

    // This method is called after the invocation of each test method in the class.
    override func tearDown() {
        ferrari = Car(type: CarType.Sport, transmissionMode: .Neutral)
        jeep = Car(type: CarType.Sport, transmissionMode: .Neutral)
    }

    func testSportFasterThanJeep() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let minutes = 60
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)

        XCTAssertTrue(ferrari.miles < jeep.miles, "Jeep is faster than Ferrari")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
