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

    func testCardNotation() {
        var card: Card
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation, "3❤️")

        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "J♠️")
    }

    func testHasSameSuit() {
        var card1: Card
        var card2: Card

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSomeSuit(card2))

        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSomeSuit(card2))
    }

    func testHasSameRank() {
        var card1: Card
        var card2: Card

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .ace, suit: .spade)
        XCTAssertTrue(card1.hasSameRank(card2))

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .eight, suit: .heart)
        XCTAssertFalse(card1.hasSameRank(card2))
    }

    func testIsPair() {
        var card1: Card
        var card2: Card
        var hand: Hand

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .ace, suit: .diamond)
        hand = Hand(card1: card1, card2: card2)
        XCTAssertTrue(hand.isPair)

        card1 = Card(rank: .ace, suit: .club)
        card2 = Card(rank: .king, suit: .diamond)
        hand = Hand(card1: card1, card2: card2)
        XCTAssertFalse(hand.isPair)
    }

    func testIsFlush() {
        var card1: Card
        var card2: Card
        var hand: Hand

        card1 = Card(rank: .ace, suit: .club)
        card2 = Card(rank: .king, suit: .club)
        hand = Hand(card1: card1, card2: card2)
        XCTAssertTrue(hand.isFlush)

        card1 = Card(rank: .ace, suit: .club)
        card2 = Card(rank: .king, suit: .diamond)
        hand = Hand(card1: card1, card2: card2)
        XCTAssertFalse(hand.isFlush)
    }

    func testIsHighCard() {
        var card1: Card
        var card2: Card
        var hand: Hand

        card1 = Card(rank: .ace, suit: .club)
        card2 = Card(rank: .king, suit: .diamond)
        hand = Hand(card1: card1, card2: card2)
        XCTAssertTrue(hand.isHighCard)

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .five, suit: .heart)
        hand = Hand(card1: card1, card2: card2)
        XCTAssertFalse(hand.isHighCard)
    }
}
