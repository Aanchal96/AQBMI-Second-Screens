//
//  ResultBMI.swift
//  AQBMI II
//
//  Created by Appinventiv on 06/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ResultBMI: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var resultBMIBackView: UIView!
    @IBOutlet weak var meterView: UIView!
    @IBOutlet weak var meterImageView: UIImageView!
    @IBOutlet weak var tagsView: UIView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var resultLabelView: UIView!
    
    @IBOutlet weak var outerStackView: UIStackView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var underweightLabel: UILabel!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var healthyLabel: UILabel!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var overweightLabel: UILabel!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var obeseLabel: UILabel!
    @IBOutlet weak var bMIImageView: UIImageView!
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

extension ResultBMI{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        //self.resultBMIBackView.backgroundColor = AppColors.darkGreyThreeColor
        //==
        self.meterView.backgroundColor = AppColors.darkGreyThreeColor
        self.resultLabelView.backgroundColor = AppColors.darkGreyThreeColor
        self.tagsView.backgroundColor = AppColors.darkGreyThreeColor
        //==
        self.yellowView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.underweightLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.underweightLabel.textColor = AppColors.coolGreyTwoColor
        self.greenView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.healthyLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.healthyLabel.textColor = AppColors.coolGreyTwoColor
        self.orangeView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.overweightLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.overweightLabel.textColor = AppColors.coolGreyTwoColor
        self.redView.layer.cornerRadius = (yellowView.bounds.height)/2
        self.obeseLabel.font = AppFonts.Poppins_Regular.withSize(11.0)
        self.obeseLabel.textColor = AppColors.coolGreyTwoColor
        //==
        self.bMIImageView.layer.cornerRadius = (self.bMIImageView.bounds.height)/2
        self.resultLabel.font = AppFonts.Poppins_Regular.withSize(15.0)
        self.resultLabel.textColor = AppColors.whiteColor
        let attributedString = NSMutableAttributedString(string: "27 BMI+")
        attributedString.addAttribute(.font, value: UIFont(name: "Poppins-Regular", size: 26.0)!, range: NSRange(location: 0, length: 2))
        self.resultLabel.attributedText = attributedString
        self.lineView.backgroundColor = AppColors.warmGreyColor
    }
    
    func populateData(index : IndexPath) {
    }
}
