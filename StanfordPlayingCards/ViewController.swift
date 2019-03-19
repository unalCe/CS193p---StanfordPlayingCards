//
//  ViewController.swift
//  StanfordPlayingCards
//
//  Created by Unal Celik on 18.03.2019.
//  Copyright © 2019 unalCe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var deck = PlayingCardDeck()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0...10 {
            if let card = deck.draw() {
                print(card.description)
            }
        }
        
    }
}

