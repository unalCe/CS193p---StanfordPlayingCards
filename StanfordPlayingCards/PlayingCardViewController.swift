//
//  PlayingCardViewController.swift
//  StanfordPlayingCards
//
//  Created by Unal Celik on 23.03.2019.
//  Copyright © 2019 unalCe. All rights reserved.
//

import UIKit

class PlayingCardViewController: UIViewController {
    
    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
            swipe.direction = [.left, .right]
            playingCardView.addGestureRecognizer(swipe)
            
            let pinch = UIPinchGestureRecognizer(target: playingCardView, action: #selector(PlayingCardView.adjustFaceCardScale(byHandlingGestureRecognizedBy:)))
            playingCardView.addGestureRecognizer(pinch)
        }
    }
    
    @objc func nextCard() {
        if let card = deck.draw() {
            playingCardView.rank = card.rank.order
            playingCardView.suit = card.suit.rawValue
        }
    }
    
    @IBAction func turnCard(_ sender: UITapGestureRecognizer) {
        playingCardView.isFaceUp = !playingCardView.isFaceUp
    }
    
    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
