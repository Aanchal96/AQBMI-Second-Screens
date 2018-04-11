//
//  SurveyAnswersCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 09/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SurveyAnswersCell: UITableViewCell {
    
    let arr = ["This method returns the layout direction implied by the provided semantic content attribute relative to the application-wide layout direction","random texts","random texts"]
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var backView: UIView!
    @IBOutlet var quesLabel: UILabel!
    @IBOutlet var ansLabel: UILabel!
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        self.setLayouts()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension SurveyAnswersCell{
    func setLayouts() {
        self.quesLabel.font = AppFonts.Poppins_Regular.withSize(15)
        self.quesLabel.textColor = AppColors.coolGreyTwoColor
        self.ansLabel.font = AppFonts.Poppins_Medium.withSize(19)
        self.ansLabel.textColor = AppColors.themeDarkSkyBlueColor
    }
    
    func populateData(_ index : Int) {
        self.quesLabel.text = self.arr[index]
        self.ansLabel.text = "Yes"
    }
}
