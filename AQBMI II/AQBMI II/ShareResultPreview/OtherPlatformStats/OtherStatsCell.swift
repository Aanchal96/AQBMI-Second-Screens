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
    @IBOutlet weak var bMILabel: UILabel!
    @IBOutlet weak var bMIFirstValLabel: UILabel!
    @IBOutlet weak var bMISecondValLabel: UILabel!
    @IBOutlet weak var bMIThirdValLabel: UILabel!
    @IBOutlet weak var bodyFatLabel: UILabel!
    @IBOutlet weak var bodyFatFirstValLabel: UILabel!
    @IBOutlet weak var bodyFatSecondValLabel: UILabel!
    @IBOutlet weak var bodyFatThirdValLabel: UILabel!
    
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        self.setlayouts()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension OtherStatsCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.containerView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.containerView.backgroundColor = AppColors.darkGreyThreeColor
        self.bMILabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bMILabel.textColor = AppColors.coolGreyTwoColor
        self.bMIFirstValLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bMIFirstValLabel.textColor = AppColors.coolGreyTwoColor
        self.bMISecondValLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bMISecondValLabel.textColor = AppColors.coolGreyTwoColor
        self.bMIThirdValLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bMIThirdValLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bodyFatLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatFirstValLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bodyFatFirstValLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatSecondValLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bodyFatSecondValLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatThirdValLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bodyFatThirdValLabel.textColor = AppColors.coolGreyTwoColor
    }
    func populateData(index : IndexPath) {
        
    }
}
