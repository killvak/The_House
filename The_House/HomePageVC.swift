//
//  HomePageVC.swift
//  The_House
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet weak var notifactionBtn: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupNavigationLabel(title: "Al Baat", color: Constant.mainColor, fontSize: 19)
        // Do any additional setup after loading the view.
//        notifactionBtn.imageInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15  )
//        searchBtn.imageInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20  )
       tableView.rowHeight = 175
        self.navigationController?.navigationBar.tintColor = Constant.mainColor
        self.tabBarController?.tabBar.tintColor = Constant.mainColor
        self.notifactionBtn.tintColor = Constant.mainColor
setUpMenuButton()
        tableView.delegate = self
        tableView.dataSource = self
         let nib = UINib(nibName: "MainEventCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MainEventCell")
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        self.tabBarController?.toolbarItems![0].image = Constant.mainProfileImg
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpMenuButton(){
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        menuBtn.setImage(UIImage(named:"ic_search")?.withRenderingMode(.alwaysTemplate), for: .normal)
        menuBtn.addTarget(self, action: #selector(self.openNotifacationcenter(_:)), for: UIControlEvents.touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: menuBtn)
        let currWidth = menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 24)
        currWidth?.isActive = true
        let currHeight = menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 24)
        currHeight?.isActive = true
        menuBarItem.tintColor = Constant.mainColor
        self.navigationItem.leftBarButtonItem = menuBarItem
        self.navigationItem.leftBarButtonItem?.tintColor  = Constant.mainColor

    }
    
    @objc func openNotifacationcenter( _ sender : UIBarButtonItem) {
        
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


extension HomePageVC : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainEventCell", for: indexPath) as! MainEventCell
        
        cell.configCell(data: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = RegisterVC() // EventDetailsVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
