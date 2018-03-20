//
//  Taco.swift
//  TacoPop
//
//  Created by Aleksei Degtiarev on 20/03/2018.
//  Copyright © 2018 Aleksei Degtiarev. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}


enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}


enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}


struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var proteinId: TacoProtein {
        return _proteinId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        
        _id = id
        _productName = productName
        
        // Taco shell
        switch shellId {
        case 2:
            self._shellId = .Corn
        default:
            self._shellId = .Flour
        }
        
        
        // Taco protein
        switch proteinId {
        case 2:
            self._proteinId = .Chicken
        case 3:
            self._proteinId = .Brisket
        case 4:
            self._proteinId = .Fish
        default:
            self._proteinId = .Beef
        }
        
        
        // Taco condiment
        switch condimentId {
        case 2:
            self._condimentId = .Plain
        default:
            self._condimentId = .Loaded
        }
        
    }
    
}
