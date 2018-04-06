//
//  BodyImproveCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 04/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class BodyImproveCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var bodyImproveCellView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var linkLabel: UILabel!
    
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

extension BodyImproveCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.containerView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.containerView.backgroundColor = AppColors.darkGreyThreeColor
        self.linkLabel.font = AppFonts.Poppins_Regular.withSize(13.0)
        self.linkLabel.textColor = AppColors.themeDarkSkyBlueColor
    }
    
    func populateData(index : IndexPath) {
    }
}
