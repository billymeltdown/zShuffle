//
//  Deck.swift
//  zShuffle
//
//  Created by Billy Gray on 9/10/17.
//  Copyright © 2017 Zetetic. All rights reserved.
//

import Foundation

class Deck {
    // An array of strings that we will shuffle
    var cards: Array<String>
    // Initializer requires a set of options for the shuffleing
    init(cards: Array<String>) {
        self.cards = cards
    }
    // Let's get our shuffle on
    public func shuffle() {
        let setSize = cards.count
        guard (setSize > 1) else { return }
        for i in stride(from: setSize - 1, through: 1, by: -1) {
            let j = random(i + 1)
            if i != j {
                cards.swapAt(i, j)
            }
        }
        NotificationCenter.default.post(name: .cardsDidShuffle, object: nil)
    }
    // A basic random function with an upper bound for the parameter
    private func random(_ max: Int) -> Int {
        // TODO: get random bytes from CommonCrypto directly, convert to Int, and adjust for bias under the given max
        // (which is what arc4random_uniform should be doing under the hood for us)
        return Int(arc4random_uniform(UInt32(max)))
    }
    
}
