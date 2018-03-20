//
//  MainVC.swift
//  TacoPop
//
//  Created by Aleksei Degtiarev on 19/03/2018.
//  Copyright © 2018 Aleksei Degtiarev. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView.addShadow()
        
    }
    
    
    
}

