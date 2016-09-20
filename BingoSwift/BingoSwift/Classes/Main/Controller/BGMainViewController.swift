//
//  BGMainViewController.swift
//  BingoSwift
//
//  Created by iexin on 16/9/20.
//  Copyright © 2016年 刘世兵. All rights reserved.
//

import UIKit

class BGMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.orangeColor()
        
        let homeVC = BGHomeController()
        self.addChildViewController(homeVC, title: "首页", imageName: "")
        
        let MessageVC = BGMessageController()
        self.addChildViewController(MessageVC, title: "消息", imageName: "")
        
        let discoverVC = BGDiscoverController()
        self.addChildViewController(discoverVC, title: "发现", imageName: "")
        
        let profileVC = BGProfileController()
        self.addChildViewController(profileVC, title: "我的", imageName: "")
        
        
        
    }
    
    /// 添加自控制器，包装nav
    ///
    /// - parameter childController: 控制器
    /// - parameter title:           标题
    /// - parameter imageName:       图片
    private func addChildViewController(childController: UIViewController,title:String,imageName:String) {
        
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        addChildViewController(UINavigationController(rootViewController:childController))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
