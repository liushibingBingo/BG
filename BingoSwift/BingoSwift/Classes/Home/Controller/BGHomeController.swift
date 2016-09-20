//
//  BGHomeController.swift
//  BingoSwift
//
//  Created by iexin on 16/9/20.
//  Copyright © 2016年 刘世兵. All rights reserved.
//

import UIKit

class BGHomeController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        let cityLabel = UILabel()
        cityLabel.frame = CGRect(x: 100, y: 80, width: 200, height: 30)
        cityLabel.text = "广州"
        
        self.view.addSubview(cityLabel)
        
    }
    
  
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.hidden = true
        
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
