//
//  BMIResultCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 04/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class BMIResultCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var bMIResultCellView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var bMIImageView: UIImageView!
    @IBOutlet weak var bMIStackView: UIStackView!
    @IBOutlet weak var bMIValueLabel: UILabel!
    @IBOutlet weak var bMILabel: UILabel!
    @IBOutlet weak var bodyFatStackView: UIStackView!
    @IBOutlet weak var bodyFatImageView: UIImageView!
    @IBOutlet weak var bodyFatValueLabel: UILabel!
    @IBOutlet weak var bodyFatLabel: UILabel!
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        self.setlayouts()
        self.setTexts()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension BMIResultCell{
    
    func setTexts(){
        self.bMILabel.text = StringConstants.K_BMI
        self.bodyFatLabel.text = StringConstants.K_Body_fat
    }
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.containerView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.containerView.backgroundColor = AppColors.darkGreyThreeColor
        self.bMIImageView.layer.cornerRadius = (self.bMIImageView.bounds.height)/2
        self.bodyFatImageView.layer.cornerRadius = (self.bodyFatImageView.bounds.height)/2
        self.bMIValueLabel.font = AppFonts.Poppins_Regular.withSize(26.0)
        self.bMIValueLabel.textColor = AppColors.coolGreyTwoColor
        self.bMILabel.font = AppFonts.Poppins_Regular.withSize(15.0)
        self.bMILabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatValueLabel.font = AppFonts.Poppins_Regular.withSize(26.0)
        self.bodyFatValueLabel.textColor = AppColors.coolGreyTwoColor
        self.bodyFatLabel.font = AppFonts.Poppins_Regular.withSize(15.0)
        self.bodyFatLabel.textColor = AppColors.coolGreyTwoColor
    }
    
    func populateData(index : IndexPath) {
    }
}
