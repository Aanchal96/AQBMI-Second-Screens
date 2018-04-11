//
//  SurveyHistoryCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 03/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SurveyHistoryCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var surveyHistoryCellView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var dateStackView: UIStackView!
    @IBOutlet weak var calenderImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeStackView: UIStackView!
    @IBOutlet weak var clockImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var arrowImageView: UIImageView!
    
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

extension SurveyHistoryCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        let labelSize:CGFloat = 14
        self.containerView.backgroundColor = AppColors.darkGreyColor
        self.containerView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.dateLabel.font = AppFonts.Poppins_Regular.withSize(labelSize)
        self.dateLabel.textColor = AppColors.coolGreyTwoColor
        self.timeLabel.font = AppFonts.Poppins_Regular.withSize(labelSize)
        self.timeLabel.textColor = AppColors.coolGreyTwoColor
    }
    func populateData(index : IndexPath) {
    }
}
