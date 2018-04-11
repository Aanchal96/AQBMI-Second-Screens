//
//  TipsHeaderCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 06/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class TipsHeaderCell: UITableViewHeaderFooterView {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var tipsImageView: UIImageView!
    @IBOutlet weak var tipsLabel: UILabel!
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setlayouts()
    }
    
    override func layoutSubviews() {
        //self.setlayouts()
    }
}

extension TipsHeaderCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.tipsImageView.layer.cornerRadius = (self.tipsImageView.bounds.height)/2
        self.tipsLabel.font = AppFonts.Poppins_Regular.withSize(13.0)
        self.tipsLabel.textColor = AppColors.coolGreyTwoColor
        self.tipsLabel.text = StringConstants.K_Tips
    }
}
