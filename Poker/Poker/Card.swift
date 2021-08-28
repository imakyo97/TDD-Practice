//
//  Card.swift
//  Poker
//
//  Created by 今村京平 on 2021/08/28.
//

import Foundation

struct Card {
    enum Suit {
        case heart
    }

    enum Rank {
        case three
    }

    let suit: Suit
    let rank: Rank
}
