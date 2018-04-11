//
//  BMIHistoryCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 03/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class BMIHistoryCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var bMIHistoryCellView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var dateStackView: UIStackView!
    @IBOutlet weak var clockImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var bMILabel: UILabel!
    @IBOutlet weak var bMIValueLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var bodyFatLabel: UILabel!
    @IBOutlet weak var bodyFatValueLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
        setTexts()
    }
    
    override func layoutSubviews() {
        self.setlayouts()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension BMIHistoryCell{
    
    //MARK:-->
    func setTexts(){
        self.bMILabel.text = StringConstants.K_BMI
        self.bodyFatLabel.text = StringConstants.K_Body_fat
        self.heightLabel.text = StringConstants.K_Height
        self.weightLabel.text = StringConstants.K_Weight
    }
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        let labelTextSize:CGFloat = 12
        self.containerView.backgroundColor = AppColors.darkGreyColor
        self.containerView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.dateLabel.font = AppFonts.Poppins_Medium.withSize(14)
        self.dateLabel.textColor = AppColors.whiteColor
        self.bMILabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.bMILabel.textColor = AppColors.coolGreyTwoColor
        self.bMIValueLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.bMIValueLabel.textColor = AppColors.coolGreyTwoColor
        self.heightLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.heightLabel.textColor = AppColors.coolGreyTwoColor
        self.heightValueLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.heightValueLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.bodyFatLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatValueLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.bodyFatValueLabel.textColor = AppColors.coolGreyTwoColor
        self.weightLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.weightLabel.textColor = AppColors.coolGreyTwoColor
        self.weightValueLabel.font = AppFonts.Poppins_Regular.withSize(labelTextSize)
        self.weightValueLabel.textColor = AppColors.coolGreyTwoColor
    }
}
