//
//  MutableCollectionExt.swift
//  TacoPop
//
//  Created by Aleksei Degtiarev on 20/03/2018.
//  Copyright © 2018 Aleksei Degtiarev. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 {return}
        
        for i in startIndex ..< endIndex {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue  }
            self.swapAt(i, j)
        }
    }
    
}
