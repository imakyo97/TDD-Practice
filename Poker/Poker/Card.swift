//
//  Card.swift
//  Poker
//
//  Created by 今村京平 on 2021/08/28.
//

import Foundation

struct Card: Equatable {
    enum Suit: String {
        case spade = "♠️"
        case heart = "❤️"
        case club = "♣️"
        case diamond = "♦️"
    }

    enum Rank: String {
        case ace = "A"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case ten = "10"
        case jack = "J"
        case queen = "Q"
        case king = "K"
    }

    let rank: Rank
    let suit: Suit

    var notation: String {
        return rank.rawValue + suit.rawValue
    }

    func hasSomeSuit(_ card: Card) -> Bool {
        return suit == card.suit
    }

    func hasSameRank(_ card: Card) -> Bool {
        return rank == card.rank
    }
}

struct Hand {
    let card1: Card
    let card2: Card

    var isPair: Bool {
        return card1.rank == card2.rank
    }

    var isFlush: Bool {
        return card1.suit == card2.suit
    }

    var isHighCard: Bool {
        return card1.rank != card2.rank && card1.suit != card2.suit
    }
}
