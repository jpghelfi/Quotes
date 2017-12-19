//
//  QuoteService.swift
//  Quotes
//
//  Created by Juan Pablo on 12/18/17.
//  Copyright © 2017 Juan Pablo. All rights reserved.
//

import Foundation
import TTMVC

class QuoteService: TTGenericService {
    
    
    func getBitcoinQuote( completion: @escaping (QuoteDTO) -> Void){
     
        let dao = QuoteDAO()
        dao.getBitcoinQuote { (response) in
            
            completion(response)
        }
        
    }
    
}
