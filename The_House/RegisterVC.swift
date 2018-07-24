//
//  RegisterVC.swift
//  The_House
//
//  Created by Killva on 7/23/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class RegisterVC: UIViewController {

    @IBOutlet weak var profileImgV: UIImageView!
    @IBOutlet weak var nameTF: SkyFloatingLabelTextField!
    @IBOutlet weak var emailTF: SkyFloatingLabelTextField!
    @IBOutlet weak var passwordTF: SkyFloatingLabelTextField!
    @IBOutlet weak var mobileTF: SkyFloatingLabelTextField!
    @IBOutlet weak var genderTitleLbl: UILabel!
    @IBOutlet weak var genderSwitch: UISwitch!

    @IBOutlet weak var headerImgV: UIImageView!
    var textFields = [SkyFloatingLabelTextField]()

    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(false , animated: true )
        textFields = [nameTF,emailTF,passwordTF,mobileTF]
        
        Constant.isMale = .male
         setupGenderSwitch()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true )
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileImgV.layer.cornerRadius = profileImgV.frame.width / 2
    }
 
    @IBAction func switchGender(_ sender: UISwitch) {
        
        if         Constant.isMale == .male {
            Constant.isMale = .female
            
        }else {
            Constant.isMale = .male
            
        }
        SetupViewUI()
        
    }
    func SetupViewUI() {
        self.headerImgV.image = Constant.isMale == .male ? UIImage(named: "2.M") : UIImage(named: "2.F")
        self.genderTitleLbl.text =  Constant.isMale == .male ? "Male" : "Female"
          self.genderTitleLbl.textColor = Constant.mainColor
        print(Constant.isMale)
        for x in textFields {
            x.textColor = Constant.mainColor
            x.lineColor = Constant.mainColor
            x.selectedTitleColor = Constant.mainColor
            x.selectedLineColor = Constant.mainColor
        }
        
    }
    
    
    func setupGenderSwitch() {
        let onColor  = UIColor.manBlue
        let offColor =  UIColor.pinkyGirl
        
 
        /*For on state*/
        genderSwitch.onTintColor = onColor
        
        /*For off state*/
        genderSwitch.tintColor = offColor
        genderSwitch.layer.cornerRadius = genderSwitch.frame.height / 2
        genderSwitch.backgroundColor = offColor
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
