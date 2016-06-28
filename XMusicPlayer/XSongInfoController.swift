//
//  XSongInfoController.swift
//  XMusicPlayer
//
//  Created by xionghuanxin on 6/28/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

import Foundation
import SwiftyJSON
typealias ConverModelCompleteHandle = (songModel:[Songs], error:NSError?) -> Void

class XSongInfoController {
    
    class func getSongModelWithName(name:String, completeHandle:ConverModelCompleteHandle) {
        let url = "\(topSongSearchApi)?keyword=\(name)&page=1&showapi_appid=\(showapi_appid)&showapi_timestamp=\(currentTime)&showapi_sign=\(showapi_sign)"
        XNetworkingService.getOnlineMusicInfo(url) { (jsonData, error) in
            
            
            if let getJsonData = jsonData {
                let jsonModels = self.conertJsonToSongModel(getJsonData)
                //执行闭包
                completeHandle(songModel: jsonModels!, error: error)
                
            }
        }
        
        
    }
    
    //把json数据转换为model数组
    class  func conertJsonToSongModel(jsonData: [JSON]!) -> [Songs]? {
        //保存每一个model
        var songInfos = [Songs]()
        for song in jsonData {
            let albumpic_big = song["albumpic_big"].string
            let albumpic_small = song["albumpic_small"].string
            let downUrl = song["downUrl"].string
            let m4a = song["m4a"].string
            let songName = song["songname"].string
            
            
            if albumpic_big != nil && albumpic_small != nil && downUrl != nil && m4a != nil && songName != nil {
                //实例化 model 结构体
                let songInfo = Songs(albumpic_big: albumpic_big, albumpic_small: albumpic_small, downUrl: downUrl, m4a: m4a, songName: songName)
                songInfos.append(songInfo)
            }
            
            
        }
        
        
        
        return songInfos
    }
    
    
}