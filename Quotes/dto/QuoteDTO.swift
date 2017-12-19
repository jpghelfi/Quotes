//
//  QuoteDTO.swift
//  Quotes
//
//  Created by Juan Pablo on 12/18/17.
//  Copyright © 2017 Juan Pablo. All rights reserved.
//

import Foundation
import TTMVC

class QuoteDTO: TTGenericDTO{
    
    var last: NSNumber?
    var buy: NSNumber?
    var sell: NSNumber?
    var symbol: String?
    var fifteenMinutes: NSNumber?
    
    
    override func loadFromDictionary(_ dictionary: [String : AnyObject]) {
        
        
        self.last = dictionary["last"] as? NSNumber
        self.buy = dictionary["buy"] as? NSNumber
        self.sell = dictionary["sell"] as? NSNumber
        self.symbol = dictionary["symbol"] as? String
        self.fifteenMinutes = dictionary["15m"] as? NSNumber
        
    }
    
}

