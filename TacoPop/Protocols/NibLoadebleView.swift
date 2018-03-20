//
//  NibLoadebleView.swift
//  TacoPop
//
//  Created by Aleksei Degtiarev on 20/03/2018.
//  Copyright © 2018 Aleksei Degtiarev. All rights reserved.
//

import UIKit

protocol NibLoadebleView: class {}

extension NibLoadebleView where Self: UIView{
    
    static var nibNameL: String! {
        return String(describing: self)
    }
}
