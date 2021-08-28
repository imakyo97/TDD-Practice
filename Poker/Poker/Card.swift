//
//  Card.swift
//  Poker
//
//  Created by 今村京平 on 2021/08/28.
//

import Foundation

struct Card {
    enum Suit {
        case spade
        case heart
        case club
        case diamond
    }

    enum Rank {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }

    let suit: Suit
    let rank: Rank

    var notation: String {
        return "3🖤"
    }
}
