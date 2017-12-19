//
//  ViewController.swift
//  Quotes
//
//  Created by Juan Pablo on 12/18/17.
//  Copyright © 2017 Juan Pablo. All rights reserved.
//

import UIKit
import PureLayout


class ViewController: UIViewController {

    var buyQuoteLabel: UILabel!
    
    var sellQuoteLabel: UILabel!
    
    var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        
        self.createViews()
        
        self.setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.fillViews()
    }
    
    private func createViews(){
        
        self.contentView = UIView()
        self.contentView.backgroundColor = .red
        self.contentView.layer.cornerRadius = 8
        self.view.addSubview(contentView)
        
        self.buyQuoteLabel = UILabel()
        self.buyQuoteLabel.textColor = .white
        self.contentView.addSubview(self.buyQuoteLabel)
        
        self.sellQuoteLabel = UILabel()
        self.sellQuoteLabel.textColor = .white
        self.contentView.addSubview(self.sellQuoteLabel)
        
    }
    
    private func fillViews(){
        
        let service = QuoteService()
        service.getBitcoinQuote { (response) in
            self.buyQuoteLabel.text = "\(String(describing: response.buy!))"
            self.sellQuoteLabel.text = "\(String(describing: response.sell!))"
        }
        
    }
    
    private func setupConstraints(){
    
        self.contentView.autoPinEdge(.top, to: .top, of: self.view, withOffset: 50)
        self.contentView.autoPinEdge(.left, to: .left, of: self.view, withOffset: 15)
        self.contentView.autoPinEdge(.right, to: .right, of: self.view, withOffset: -15)
        self.contentView.autoSetDimension(.height, toSize: 80)
        
        self.buyQuoteLabel.autoPinEdge(.top, to: .top, of: self.contentView, withOffset: 10)
        self.buyQuoteLabel.autoPinEdge(.left, to: .left, of: self.contentView, withOffset: 5)
        
        self.sellQuoteLabel.autoPinEdge(.top, to: .bottom, of: self.buyQuoteLabel)
        self.sellQuoteLabel.autoPinEdge(.left, to: .left, of: self.buyQuoteLabel)
    }

    


}

