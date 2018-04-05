//
//  TipsInnerTableViewCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 05/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class TipsInnerTableViewCell: UITableViewCell {
    
    //MARK:--> Variable declaration
    //=============================
    let tips = ["• Sleep at least 7 hrs/ per day. ","• Eat 50 gms of protin everyday.","• Measure your carbs intake.","• Do excise min 1.5 hrs."]
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var tipsInnerCellView: UIView!
    @IBOutlet weak var tipsLabel: UILabel!
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setlayouts()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension TipsInnerTableViewCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.tipsLabel.font = AppFonts.Poppins_Regular.withSize(12)
        self.tipsLabel.textColor = AppColors.coolGreyTwoColor
    }
    func populateData(index : Int) {
        self.tipsLabel.text = tips[index]
    }
}
