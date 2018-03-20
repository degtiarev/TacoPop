//
//  UICollectionViewExt.swift
//  TacoPop
//
//  Created by Aleksei Degtiarev on 20/03/2018.
//  Copyright © 2018 Aleksei Degtiarev. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T : ReusableView, T: NibLoadebleView {
        
        let nib = UINib(nibName: T.nibNameL, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell> (forIndexPath indexpath: NSIndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexpath as IndexPath) as? T else {
            fatalError("Could nit dequue with identifier \(T.reuseIdentifier)")
        }
        
        return cell
    }
    
}



extension UICollectionViewCell: ReusableView{
    
    
}
