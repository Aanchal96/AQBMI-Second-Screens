//
//  TipsCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 05/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class TipsCell: UITableViewCell {
    
    fileprivate let sectionInsets = UIEdgeInsets(top: 0.0, left: 15.0, bottom: 0.0, right: 15.0)
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var tipsCellView: UIView!
    @IBOutlet weak var tipsCollectionView: UICollectionView!
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
        self.registerNib()
        self.setCollectionView()
    }
    
    override func layoutSubviews() {
        self.setlayouts()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension TipsCell{
    //MARK:--> Register Nibs
    func registerNib(){
        self.tipsCollectionView.register(UINib(nibName:"TipsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TipsCollectionViewCellID")
    }
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
    }
    
    func populateData(index : IndexPath) {
    }
}

//MARK:--> Collection View Methods
//================================
extension TipsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func setCollectionView(){
        self.tipsCollectionView.delegate = self
        self.tipsCollectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.tipsCollectionView.dequeueReusableCell(withReuseIdentifier: "TipsCollectionViewCellID", for: indexPath) as! TipsCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = 30
        let widthPerItem = 320 - paddingSpace
        return  CGSize(width: widthPerItem, height: 115)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
