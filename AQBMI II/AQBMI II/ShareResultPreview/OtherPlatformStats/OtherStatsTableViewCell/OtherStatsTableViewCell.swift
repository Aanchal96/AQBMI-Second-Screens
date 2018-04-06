//
//  OtherStatsTableViewCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 06/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class OtherStatsTableViewCell: UITableViewCell {

    //MARK:--> Variable declaration
    //=============================
    let bMI = ["BMI","21","21","21"]
    let bodyFat = ["Body Fat %","14","14","14"]
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var bMILabel: UILabel!
    @IBOutlet weak var bodyFatLabel: UILabel!
    
    //MARK:--> Cell Life Cycle
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

extension OtherStatsTableViewCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.bMILabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bMILabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatLabel.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.bodyFatLabel.textColor = AppColors.coolGreyTwoColor
    }
    
    func populateData(index : Int) {
        self.bMILabel.text = bMI[index]
        self.bodyFatLabel.text = bodyFat[index]
    }
}
