//
//  DataModel.swift
//  zShuffle
//
//  Created by Billy Gray on 9/10/17.
//  Copyright © 2017 Zetetic. All rights reserved.
//

import Foundation

class DataModel {
    // Creates a thread-safe (I swear, I checked) singleton via dispatch_once
    static let sharedModel = DataModel()
    // Our model, it has a deck of cards. Later it may have other things.
    var deck: Deck?
    // Part of the singleton pattern: it's not a singleton if you can create more than one
    // So we make the initializer private
    private init () {}
}
