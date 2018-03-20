//
//  MainVC.swift
//  TacoPop
//
//  Created by Aleksei Degtiarev on 19/03/2018.
//  Copyright © 2018 Aleksei Degtiarev. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataService: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataService.delegate = self
        dataService.loadDeliciousTacoData()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addShadow()
        
        //        let nib = UINib(nibName: "TacoCell", bundle: nil)
        //        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        collectionView.register(TacoCell.self)
        
    }
    
    
    func deleliciousTacoDataLoaded() {
        print ("Delicious Data Loaded!")
    }
    
    
    
}


extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataService.tacoArray.count
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
        //            cell.configureCell(taco: dataService.tacoArray[indexPath.row])
        //            return cell
        //        }
        //        return UICollectionViewCell()
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: dataService.tacoArray[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
}

