//
//  LightFontColorLbl.swift
//  The_House
//
//  Created by admin on 7/15/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit

class LightFontColorLbl: UILabel {
 
    override func awakeFromNib() {
        print("ss")
        self.textColor = Constant.lightMainColor
    }

}

class DarkFontColorLbl: UILabel {
    
    override func awakeFromNib() {
        print("ss")
        self.textColor = Constant.mainColor
    }
    
}

class LightFontColorBtn: UIButton {
    
    override func awakeFromNib() {
        print("ss")
        self.titleLabel?.textColor = Constant.lightMainColor
    }
    
}

class DarkFontColorBtn: UIButton {
    
    override func awakeFromNib() {
        print("ss")
                self.titleLabel?.textColor = Constant.mainColor
    }
    
}
