//
//  SectionsHeaderCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 05/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SectionsHeaderCell: UITableViewHeaderFooterView {
    
    //MARK:--> Variable declaration
    //=============================
    let titles = ["\(StringConstants.K_BMI_Result)","\(StringConstants.K_Other_Platform_Statistics)","\(StringConstants.K_Tips)","\(StringConstants.K_Body_Improvement)"]
    var check = false
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var checkBtn: UIButton!
    
    //MARK:--> IBAction
    //==================
    @IBAction func checkBtn(_ sender: UIButton) {
        //check = !check
        if !check{
            sender.setImage(UIImage(named:"icShareCheck.png"), for: .normal)
            check = true
        }
        else{
            sender.setImage(UIImage(named:"icShareUncheck.png"), for: .normal)
            check = false
        }
    }
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setlayouts()
        setTexts()
    }
    
    override func layoutSubviews() {
        //self.setlayouts()
    }
}

extension SectionsHeaderCell{
    //MARK:--> Texts
    //================
    func setTexts(){
        self.titleLabel.text = StringConstants.K_BMI_Result
        self.descriptionLabel.text = StringConstants.K_Tap_on_checkbox_to_allow_to_share
    }
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.titleLabel.font = AppFonts.Poppins_Regular.withSize(13)
        self.titleLabel.textColor = AppColors.coolGreyTwoColor
        self.descriptionLabel.font = AppFonts.Poppins_Regular.withSize(10)
        self.descriptionLabel.textColor = AppColors.battleshipGreyTwoColor
    }
    
    func populateData(index : Int) {
        self.titleLabel.text = titles[index-1]
        self.descriptionLabel.text = StringConstants.K_Tap_on_checkbox_to_allow_to_share
    }
}
