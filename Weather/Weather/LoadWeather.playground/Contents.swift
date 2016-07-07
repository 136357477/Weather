//: Playground - noun: a place where people can play

import Cocoa


// load weather
var url = NSURL(string: "http://www.weather.com.cn/data/sk/101010100.html")
//var data = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached)

var data = try NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached)
var str = NSString(data: data, encoding: NSUTF8StringEncoding)

var json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)





        