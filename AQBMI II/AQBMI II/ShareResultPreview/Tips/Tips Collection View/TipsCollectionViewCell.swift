//
//  TipsCollectionViewCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 05/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var tipsInnerTableView: UITableView!
    
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
        self.registerNib()
        self.setTable()
    }
    
    override func layoutSubviews() {
        self.setlayouts()
    }
}

extension TipsCollectionViewCell{
    
    //MARK:--> Register Nibs
    //======================
    func registerNib(){
        self.tipsInnerTableView.register(UINib(nibName: "TipsInnerTableViewCell", bundle: nil), forCellReuseIdentifier: "TipsInnerTableViewCellID")
    }
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.backgroundColor = AppColors.darkGreyThreeColor
        self.backgroundView?.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.backgroundView?.clipsToBounds = true
    }
    func populateData(index : IndexPath) {
    }
}

//MARK:--> Table View Methods
//===========================
extension TipsCollectionViewCell: UITableViewDataSource,UITableViewDelegate{
    func setTable(){
        self.tipsInnerTableView.dataSource = self
        self.tipsInnerTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tipsInnerTableView.dequeueReusableCell(withIdentifier: "TipsInnerTableViewCellID", for: indexPath) as! TipsInnerTableViewCell
        cell.populateData(index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 20
    }
}
