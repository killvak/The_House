//
//  AppDelegate.swift
//  The_House
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    
    var tabBar: UITabBarController?
    func reload() {
        let storyb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        tabBar = storyb.instantiateViewController(withIdentifier: "rootNav") as! UITabBarController
//        tabBar?.tabBar.items?[2].badgeValue = (ShoppingCart.sharedInstance.itemsArray.count > 0) ? "\(ShoppingCart.sharedInstance.itemsArray.count)" : nil
        //          }
        tabBar?.selectedIndex = 0
        UIApplication.shared.keyWindow?.rootViewController = tabBar
    }
    
    func reloadWithAnimation() {
        //        self.view.addSubview(self.activityInd)
        //        self.activityInd.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        //        self.activityInd.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        var transition: UIViewAnimationOptions = .transitionFlipFromLeft
        
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        let ud = UserDefaults.standard
        if (ud.object(forKey: "token") != nil) {
            let storyb = UIStoryboard(name: "Main", bundle: Bundle.main)
            
            tabBar = storyb.instantiateViewController(withIdentifier: "rootNav") as! UITabBarController
            
//            tabBar?.tabBar.items?[2].badgeValue = (ShoppingCart.sharedInstance.itemsArray.count > 0) ? "\(ShoppingCart.sharedInstance.itemsArray.count)" : nil
//            print("\(ShoppingCart.sharedInstance.itemsArray.count)")
            //          }
            tabBar?.selectedIndex = 0
            rootviewcontroller.rootViewController = tabBar
            
            //            rootviewcontroller.rootViewController = storyb.instantiateViewController(withIdentifier: "rootNav")
        }else {
            //            let nav1 = UINavigationController()
            //            nav1.navigationBar.tintColor = .black
//            let initialViewController = UINavigationController.init(rootViewController:  SplashLoginVC(nibName: "SplashLoginVC", bundle: nil))
//            initialViewController.isNavigationBarHidden = true
            //            nav1.viewControllers = [initialViewController]
//            rootviewcontroller.rootViewController = initialViewController
            
        }
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        mainwindow.backgroundColor = UIColor(hue: 1, saturation: 1, brightness: 1, alpha: 1)
        //        UIView.transition(with: mainwindow, duration: 0.55001, options: transition, animations: { () -> Void in
        //        }) { (finished) -> Void in
        //
        //        }
    }
    
}

