//
//  PlayingCard.swift
//  StanfordPlayingCards
//
//  Created by Unal Celik on 19.03.2019.
//  Copyright © 2019 unalCe. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    
    var description: String { return "\(suit) \(rank)" }
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible {
        case spades = "♣️"
        case clubs = "♠️"
        case diamonds = "♦️"
        case hearts = "♥️"
        
        static var allSuits = [Suit.spades, .clubs, .diamonds, .hearts]
        var description: String { return self.rawValue }
    }
    
    enum Rank: CustomStringConvertible {
        case ace
        case jack
        case queen
        case king
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .jack: return 11
            case .queen: return 12
            case .king: return 13
            case .numeric(let pips): return pips
            }
        }
        
        static var allRanks: [Rank] {
            var all = [Rank.ace, .jack, .queen, .king]
            
            for pips in 2...10 {
                all.append(Rank.numeric(pips))
            }
            
            return all
        }
        
        var description: String {
            switch self {
            case .ace: return "A"
            case .jack: return "J"
            case .queen: return "Q"
            case.king: return "K"
            case .numeric(let pips): return String(pips)
            }
        }
    }
}
