//
//  BMIResultFirstCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 05/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class BMIResultFirstCell: UITableViewHeaderFooterView {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var crossBtn: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    
    //MARK:--> IBActions
    //==================
    
    //MARK:--> Cell life cycle
    //========================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        self.setlayouts()
    }
}

extension BMIResultFirstCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.backgroundView?.backgroundColor = AppColors.darkGreyFourColor
    }
}
