//: Playground - noun: a place where people can play

import UIKit
////var str = "Hello,world"
////str 转换为NSString 
//////方法1
////var str:NSString = "Hello,world"
////方法2
//var str = "Hello,world" as NSString
//str.substringWithRange(NSRange(location: 0, length: 5))
//

//用, 把数组连接起来
//var array:NSArray = [1,2,3,4]
//array.componentsJoinedByString(",")

//var array:NSMutableArray = [1,2,3]
//var array2 = array
//array2.addObject(4)
//array

//命名空间
//OC 与swift 

var red:CGFloat = 0.0,green:CGFloat = 0.0 ,blue:CGFloat = 0.0,alpha:CGFloat = 0.0

UIColor.redColor().getRed(&red, green: &green, blue: &blue, alpha: &alpha)

red
green
blue
alpha

// swift 泛型(oc中无)

var num1 = "4.0" , num2 = "5.0"
////intout 表示里面的形参改变,外面的实参也改变
//func swapValue(inout num1:Int , inout num2:Int) {
//    (num1,num2) = (num2,num1)
//}
//
//func swapValue(inout num1:Double , inout num2:Double) {
//    (num1,num2) = (num2,num1)
//}
//func swapValue(inout num1:String , inout num2:String) {
//    (num1,num2) = (num2,num1)
//}


//
////改为泛型
//func swapValue<T>(inout num1:T , inout num2:T) {
//    (num1,num2) = (num2,num1)
//}
//
//
//swapValue(&num1, num2: &num2)
//
//num1
//num2

////异常处理
//enum Error:ErrorType{
//    case WrongJSON
//}
//
//func test() throws {
//    do{
//      try  NSJSONSerialization.JSONObjectWithData(NSData(), options: .AllowFragments)
//    }catch{
//        throw Error.WrongJSON
//    }
//}
//
//do{
//    try test()
//}catch Error.WrongJSON{
//
//}


//guard 相当于if 但是比if强大
func checkup(person:[String:String]){
    //检查身份证,如果身份证没带,则不能进入考场
    guard let id = person["id"] else {
        print("没有身份证不能进入考场")
        return
    }
    //检查准考证,如果准考证没带,则不能进入考场
    guard let examNumber = person["examNumber"] else {
        print("没有准考证,不能进入考场!")
        return
    }
    
    //身份证和准考证齐全,方可进入考场
    print("你的身份证号为:\(id),准考证号为:\(examNumber),请进入考场!")
    
}

//checkup(["id":"123456"])
//checkup(["examNumber":"2423423"])
checkup(["id":"12345","examNumber":"5431"])














//// load weather
//var url = NSURL(string: "http://www.weather.com.cn/data/sk/101010100.html")
//
////var data = try NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached)
////var str = NSString(data: data, encoding: NSUTF8StringEncoding)
////
////var json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
////var weatherInfo = json.objectForKey("weatherinfo")
////
////var city = weatherInfo?.objectForKey("city")
////var temp = weatherInfo?.objectForKey("temp")
////var wind = weatherInfo?.objectForKey("WD")
////
//
//
//
//
//
//do {
//    let data = try NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached)
//    //        var str = NSString(data: data, encoding: NSUTF8StringEncoding)
//    
//    let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
//    
//    let weatherInfo = json.objectForKey("weatherinfo")
//    
//    let city = weatherInfo?.objectForKey("city")
//    let temp = weatherInfo?.objectForKey("temp")
//    let wind = weatherInfo?.objectForKey("WD")
//    let ws = weatherInfo?.objectForKey("WS")
//    print("城市:\(city!)\n温度:\(temp!)\n风:\(wind!)风级:\(ws!)")
////    tv.text = "城市:\(city)\n温度:\(temp)\n风:\(wind)风级:\(ws)"
//}catch{
//    print(error)
//}
//




