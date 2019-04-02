//
//  PlayingCardDeck.swift
//  StanfordPlayingCards
//
//  Created by Unal Celik on 19.03.2019.
//  Copyright © 2019 unalCe. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.allSuits {
            for rank in PlayingCard.Rank.allRanks {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}
