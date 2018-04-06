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
    let titles = ["BMI+ RESULT","OTHER PLATFORM STATISTICS","TIPS","BODY IMPROVEMENT"]
    let descriptions = ["Tap on checkbox for allow to share.","Tap on checkbox for allow to share.","Tap on checkbox for allow to share.","Tap on checkbox for allow to share."]
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
    }
    
    override func layoutSubviews() {
        //self.setlayouts()
    }
}

extension SectionsHeaderCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.titleLabel.font = AppFonts.Poppins_Regular.withSize(13)
        self.titleLabel.textColor = AppColors.coolGreyTwoColor
        self.descriptionLabel.font = AppFonts.Poppins_Regular.withSize(10)
        self.descriptionLabel.textColor = AppColors.battleshipGreyTwoColor
        //self.checkBtn.layer.borderWidth = 2
        //self.checkBtn.layer.borderColor = UIColor.gray.cgColor
        //self.checkBtn.layer.cornerRadius = CGFloat(CornerRadius().corner)
    }
    func populateData(index : Int) {
        self.titleLabel.text = titles[index-1]
        self.descriptionLabel.text = descriptions[index-1]
    }
}
