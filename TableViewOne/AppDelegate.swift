//
//  AppDelegate.swift
//  TableViewOne
//
//  Created by admin on 08.10.2022.
//  Copyright © 2022 Olya. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool{
      let vcex = ViewController()
        let navController = UINavigationController()
       navController.setViewControllers([vcex], animated: true)
      self.window = UIWindow(frame: UIScreen.main.bounds)
         window?.rootViewController = navController
         window?.makeKeyAndVisible()
        
         
         return true
     }
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
    {
        return .portrait
    }
}


