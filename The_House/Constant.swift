//
//  Constant.swift
//  The_House
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation
import UIKit

class Constant {
    
    
    static var mainColor : UIColor = {
        if true {
            return UIColor.manBlue
        }else {
            return UIColor.pinkyGirl
        }
    }()
    static var lightMainColor : UIColor = {
        if true {
            return UIColor.lightManBlue
        }else {
            return UIColor.lightPinkyGirl
        }
    }()
    static var mainProfileImg : UIImage = {
        if true {
            return UIImage(named:"002-businessman")!
        }else {
            return UIImage(named:"004-woman-avatar")!
        }
    }()
}
