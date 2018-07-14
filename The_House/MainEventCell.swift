//
//  MainEventCell.swift
//  The_House
//
//  Created by Killva on 7/14/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit

class MainEventCell: UITableViewCell {
    @IBOutlet weak var headerimgV: UIImageView!
    @IBOutlet weak var profileImgV: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(data : EvenData) {
        
        self.headerimgV.image = UIImage(named:data.headerImageS)
        self.profileImgV.image = UIImage(named:data.profileImageS)
        self.titleLbl.text = data.title
        self.descLbl.text = data.desc
        self.dateLbl.text = data.datee
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
