//
//  AppFonts.swift
//  DannApp
//
//  Created by Aakash Srivastav on 20/04/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import Foundation
import UIKit


enum AppFonts : String {
    case Poppins_Bold = "Poppins-Bold"
    case Poppins_SemiBold = "Poppins-SemiBold"
    case Poppins_Regular = "Poppins-Regular"
    case Poppins_Medium = "Poppins-Medium"
    case Poppins_Light = "Poppins-Light"
}

extension AppFonts {
    
    func withSize(_ fontSize: CGFloat) -> UIFont {
        
        return UIFont(name: self.rawValue, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
    
    func withDefaultSize() -> UIFont {
        
        return UIFont(name: self.rawValue, size: 12.0) ?? UIFont.systemFont(ofSize: 12.0)
    }
    
    func withSize(_ iphone5: CGFloat,iphone6: CGFloat,iphone6p: CGFloat) -> UIFont {
        
        var fontSize:CGFloat = 0
                if ScreenSize.screenWidth < 321 {
                    fontSize = iphone5
                } else if ScreenSize.screenWidth < 375 {
                    fontSize = iphone6
                } else {
                    fontSize = iphone6p
                }
        return UIFont(name: self.rawValue, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}
// USAGE : let font = AppFonts.Helvetica.withSize(13.0)
// USAGE : let font = AppFonts.Helvetica.withDefaultSize()
