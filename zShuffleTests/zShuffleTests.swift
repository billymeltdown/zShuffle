//
//  zShuffleTests.swift
//  zShuffleTests
//
//  Created by Billy Gray on 9/10/17.
//  Copyright © 2017 Zetetic. All rights reserved.
//

import XCTest

@testable import zShuffle

class zShuffleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let originalSet = ["Frank", "Bob", "Alice", "Eve", "Charlie"]
        let deck: Deck = Deck(cards: originalSet)
        deck.shuffle()
        XCTAssert(originalSet != deck.cards, "The shuffled set should not match the original set")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
