//
//  PokerTests.swift
//  PokerTests
//
//  Created by 今村京平 on 2021/08/28.
//

import XCTest
@testable import Poker

class PokerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testInitializeCard() {
        var card: Card

        card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .
                        three)

        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.suit, .spade)
        XCTAssertEqual(card.rank, .jack)
    }

    func testCardNotation() {
        let card1 = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card1.notation, "3🖤")

        let card2 = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card2.notation, "J♠️")
    }
}
