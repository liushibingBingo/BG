//
//  BGHomeController.swift
//  BingoSwift
//
//  Created by iexin on 16/9/20.
//  Copyright © 2016年 刘世兵. All rights reserved.
//

import UIKit
import CoreLocation

class BGHomeController: UIViewController ,CLLocationManagerDelegate{
    
    let locationManager:CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        let cityLabel = UILabel()
        cityLabel.frame = CGRect(x: 100, y: 80, width: 200, height: 30)
        cityLabel.text = "广州"
        self.view.addSubview(cityLabel)
        
        let addCity = UIButton()
        addCity.frame = CGRect(x: 200, y: 80, width: 30, height: 30)
        addCity.titleLabel?.text = "+"
        addCity.backgroundColor = UIColor.redColor()
        addCity.setTitleColor(UIColor.blackColor(),forState: UIControlState.Normal)
        self.view.addSubview(addCity)
        
        

        let degreeLabel = UILabel()
        degreeLabel.adjustsFontSizeToFitWidth = true;
        degreeLabel.frame = CGRect(x: 50, y: 400, width: 100, height: 100)
        degreeLabel.text = "89"
        self.view.addSubview(degreeLabel)
        
        
     
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager.startUpdatingLocation()
//            print("定位开始")
//        }
        
        //设置定位服务管理器代理
        locationManager.delegate = self
        //设置定位进度
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //更新距离
        locationManager.distanceFilter = 100
        ////发送授权申请
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy=kCLLocationAccuracyBestForNavigation;
        if (CLLocationManager.locationServicesEnabled())
        {
            //允许使用定位服务的话，开启定位服务更新
            locationManager.startUpdatingLocation()
            print("定位开始")
        }
    
    }
    
    //出现错误
    func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWithError error: NSError?) {
        print(error)
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        let currLocation:CLLocation = locations.last!
//        label1.text = "经度：\(currLocation.coordinate.longitude)"
//        //获取纬度
//        label2.text = "纬度：\(currLocation.coordinate.latitude)"
//        //获取海拔
//        label3.text = "海拔：\(currLocation.altitude)"
//        //获取水平精度
//        label4.text = "水平精度：\(currLocation.horizontalAccuracy)"
//        //获取垂直精度
//        label5.text = "垂直精度：\(currLocation.verticalAccuracy)"
//        //获取方向
//        label6.text = "方向：\(currLocation.course)"
//        //获取速度
//        label7.text = "速度：\(currLocation.speed)"
        
        print("%@",currLocation)
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
