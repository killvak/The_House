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
        print(self.text)
        print("\( Constant.lightMainColor)")
        self.textColor =   Constant.lightMainColor
    }

}

class DarkFontColorLbl: UILabel {
    
    override func awakeFromNib() {
         self.textColor =  Constant.mainColor
    }
    
}

class LightFontColorBtn: UIButton {
    
    override func awakeFromNib() {
      self.setTitleColor(Constant.lightMainColor, for: .normal)

    }
    
}

class DarkFontColorBtn: UIButton {
    
    override func awakeFromNib() {
         self.setTitleColor(Constant.mainColor, for: .normal)
    }
    
}

class DarkBackGroundBtn: UIButtonX {
    
    override func awakeFromNib() {
         self.backgroundColor = Constant.mainColor
    }
    
}
