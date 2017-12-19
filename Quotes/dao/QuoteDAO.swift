//
//  QuoteDAO.swift
//  Quotes
//
//  Created by Juan Pablo on 12/18/17.
//  Copyright © 2017 Juan Pablo. All rights reserved.
//

import Foundation
import TTMVC
import Alamofire

class QuoteDAO: TTGenericDAO {
    
    let baseURL = "https://blockchain.info/es/ticker"
    
    func getBitcoinQuote( completion: @escaping (QuoteDTO) -> Void){
        
        Alamofire.request(baseURL, encoding: JSONEncoding.default, headers: nil).responseJSON{
            
            (response) in
            
            if let dic = response.value as? [String:AnyObject], let usd = dic["USD"] as? [String:AnyObject]{
                
                if let quote = QuoteDTO(dictionary: usd){
                    
                    completion(quote)
                }
            }
        }
    }
    
}
