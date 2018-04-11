//
//  ProfilePopUpVC.swift
//  AQBMI II
//
//  Created by Appinventiv on 09/04/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ProfilePopUpVC: UIViewController {
    
    //MARK:--> IBOutlets
    //==================
    @IBOutlet var profilePopUpBackview: UIView!
    @IBOutlet var popUpView: UIView!
    @IBOutlet var popUpImageView: UIImageView!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var okBtn: UIButton!
    @IBOutlet var notNowBtn: UIButton!
    
    //MARK:--> IBAction
    //=================
    @IBAction func okBtn(_ sender: UIButton) {
    }
    
    @IBAction func notNowBtn(_ sender: UIButton) {
    }
    
    //MARK:--> VC Life Cycle
    //======================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTexts()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.setLayouts()
    }
}

extension ProfilePopUpVC{
    
    //MARK:--> Layouts
    //================
    func setLayouts(){
        self.popUpView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.messageLabel.font = AppFonts.Poppins_Regular.withSize(17.0)
        self.messageLabel.textColor = AppColors.charcoalGreyColor
        self.okBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.okBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal)
        self.notNowBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.notNowBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal)
    }
    
    func setTexts(){
        self.messageLabel.text = StringConstants.K_Please_complete_your_profile_info
        self.okBtn.setTitle(StringConstants.K_Ok, for: .normal)
        self.notNowBtn.setTitle(StringConstants.K_Not_now, for: .normal)
    }
}
