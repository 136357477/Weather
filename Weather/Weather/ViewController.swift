//
//  ViewController.swift
//  Weather
//
//  Created by guohui on 16/5/29.
//  Copyright © 2016年 guohui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tv: UITextView!
    
    @IBAction func btnPressed(sender: AnyObject) {
        print("Button clicked!")
        loadWeather()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadWeather()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadWeather(){
        
        
        let url = NSURL(string: "http://www.weather.com.cn/data/sk/101010100.html")
//        var error = NSError?
        do {
            let data = try NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached)
            //        var str = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
            
            let weatherInfo = json.objectForKey("weatherinfo")
            
            let city = weatherInfo?.objectForKey("city")
            let temp = weatherInfo?.objectForKey("temp")
//            let city:AnyObject! = weatherInfo!.objectForKey("city")
            let wind = weatherInfo?.objectForKey("WD")
            let ws = weatherInfo?.objectForKey("WS")
            tv.text = "城市:\(city!)\n温度:\(temp!)\n风:\(wind!)\n风级:\(ws!)"
//            tv.text = "城市:\(city)\n温度:\(temp)\n风:\(wind)风级:\(ws)"
        }catch{
            print(error)
        }

    }

}

