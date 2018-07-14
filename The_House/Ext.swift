//
//  Ext.swift
//  The_House
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//


import Foundation
import UIKit

extension UIColor {
    
    
    static func setRgp(red: CGFloat,green:CGFloat,blue:CGFloat,alpha : CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
    
    static var  manBlue : UIColor  =  UIColor.setRgp(red: 28, green: 94, blue: 142, alpha: 1)
    static var pinkyGirl = UIColor.setRgp(red: 194, green: 75, blue: 115, alpha: 1)
    static var semiDarkYoutubeRed = UIColor.setRgp(red: 91, green: 14, blue: 13, alpha: 1)
}

extension UIViewController {
    
    func setupNavigationLabel(title : String, color : UIColor, fontSize : CGFloat)  {
        let lbl =  UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 12, height: view.frame.height))
        lbl.text = title
        lbl.textAlignment = .center
        lbl.textColor = color
        lbl.font = UIFont.boldSystemFont(ofSize: fontSize)
        navigationItem.titleView = lbl
        
    }
}

