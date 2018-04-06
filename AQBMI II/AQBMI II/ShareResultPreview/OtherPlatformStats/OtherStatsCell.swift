//
//  OtherStatsCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 04/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class OtherStatsCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var otherStatsCellView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var otherStatsTableView: UITableView!
    
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
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension OtherStatsCell{
    
    //MARK:--> Register Nibs
    //======================
    func registerNib(){
        self.otherStatsTableView.register(UINib(nibName: "OtherStatsTableViewCell", bundle: nil), forCellReuseIdentifier: "OtherStatsTableViewCellID")
    }
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.containerView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.containerView.backgroundColor = AppColors.darkGreyThreeColor
    }
    
    func populateData(index : IndexPath) {
    }
}

//MARK:--> Table View Methods
//===========================
extension OtherStatsCell: UITableViewDataSource,UITableViewDelegate{
    func setTable(){
        self.otherStatsTableView.dataSource = self
        self.otherStatsTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.otherStatsTableView.dequeueReusableCell(withIdentifier: "OtherStatsTableViewCellID", for: indexPath) as! OtherStatsTableViewCell
        cell.populateData(index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
          return 50
        }
        else{
          return 30
        }
    }
}
