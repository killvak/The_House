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
        if false {
            return UIColor.manBlue
        }else {
            return UIColor.pinkyGirl
        }
    }()
    static var mainProfileImg : UIImage = {
        if false {
            return UIImage(named:"002-businessman")!
        }else {
            return UIImage(named:"004-woman-avatar")!
        }
    }()
}
