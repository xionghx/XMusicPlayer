//
//  XNetworkingService.swift
//  XMusicPlayer
//
//  Created by xionghuanxin on 6/28/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

import Foundation
import SwiftyJSON

let topSongSearchApi = "http://route.showapi.com/213-1"
let showapi_appid = "21068"
let showapi_sign = "d1e38a9255d143ccb98b41aed0c53c34"
var keyword : String?
var page : String?

//获取系统当前时间
var currentTime : String {
get{
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyyMMddHHmmss"
//    print(dateFormatter.stringFromDate(NSDate()))
    return dateFormatter.stringFromDate(NSDate())
}
}

typealias RequestCompleteHandle = (jsonData:[JSON]?,error:NSError?)->Void

class XNetworkingService {
    class func getOnlineMusicInfo(url: String!,completeHandel:RequestCompleteHandle) {
        let ecodeUrl = url.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
        let session = NSURLSession.sharedSession()
        session.dataTaskWithURL(NSURL(string: ecodeUrl!)!) { (data, response, error) in
            print(data)
            let json = JSON(data: data!)["showapi_res_body"]["pagebean"]["contentlist"].array
           
            print(json)
            //执行闭包
            completeHandel(jsonData: json, error: error)
            
            }.resume()

    
    }
}
