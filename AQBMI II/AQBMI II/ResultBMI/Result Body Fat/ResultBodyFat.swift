//
//  ResultBodyFat.swift
//  AQBMI II
//
//  Created by Appinventiv on 06/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ResultBodyFat: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var resultBodyFatBackView: UIView!
    @IBOutlet weak var meterView: UIView!
    @IBOutlet weak var meterImageView: UIImageView!
    @IBOutlet weak var tagsView: UIView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var resultLabelView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var outerStackView: UIStackView!
    @IBOutlet weak var essentialLabel: UILabel!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var atheletesLabel: UILabel!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var fitnessLabel: UILabel!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var acceptLabel: UILabel!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var obeseLabel: UILabel!
    @IBOutlet weak var bodyFatImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var infoBtn: UIButton!
    
    //MARK:--> IBActions
    //==================
    @IBAction func infoBtn(_ sender: Any) {
    }
    
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

extension ResultBodyFat{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.resultBodyFatBackView.backgroundColor = AppColors.darkGreyThreeColor
        //===
        self.yellowView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.essentialLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.essentialLabel.textColor = AppColors.coolGreyTwoColor
        self.greenView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.atheletesLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.atheletesLabel.textColor = AppColors.coolGreyTwoColor
        self.orangeView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.fitnessLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.fitnessLabel.textColor = AppColors.coolGreyTwoColor
        self.redView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.acceptLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.acceptLabel.textColor = AppColors.coolGreyTwoColor
        self.blueView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.obeseLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.obeseLabel.textColor = AppColors.coolGreyTwoColor
        //==
        self.bodyFatImageView.layer.cornerRadius = (self.bodyFatImageView.bounds.height)/2
        self.resultLabel.font = AppFonts.Poppins_Regular.withSize(15.0)
        self.resultLabel.textColor = AppColors.whiteColor
        let attributedString = NSMutableAttributedString(string: "24 Body fat %")
        attributedString.addAttribute(.font, value: UIFont(name: "Poppins-Regular", size: 26.0)!, range: NSRange(location: 0, length: 2))
        self.resultLabel.attributedText = attributedString
        self.lineView.backgroundColor = AppColors.warmGreyColor
    }
    func populateData(index : IndexPath) {
    }
}
