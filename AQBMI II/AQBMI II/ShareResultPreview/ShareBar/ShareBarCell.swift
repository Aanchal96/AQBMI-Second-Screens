//
//  ShareBarCell.swift
//  AQBMI II
//
//  Created by Appinventiv on 05/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ShareBarCell: UITableViewHeaderFooterView {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet weak var shareBtn: UIButton!
    
    //MARK:--> IBActions
    //==================
    @IBAction func shareBtn(_ sender: UIButton) {
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

extension ShareBarCell{
    
    //MARK:--> Layouts
    //================
    func setlayouts(){
        self.backgroundColor = AppColors.darkGreyFourColor
        self.shareBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(17.0)
        self.shareBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal)
    }
}
