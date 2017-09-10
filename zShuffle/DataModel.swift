//
//  DataModel.swift
//  zShuffle
//
//  Created by Billy Gray on 9/10/17.
//  Copyright © 2017 Zetetic. All rights reserved.
//

import Foundation

class DataModel {
    static let sharedModel = DataModel()
    var deck: Deck?
    private init () {}
}
