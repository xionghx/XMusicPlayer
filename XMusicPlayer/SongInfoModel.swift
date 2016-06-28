//
//  SongInfoModel.swift
//  XMusicPlayer
//
//  Created by xionghuanxin on 6/28/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

import Foundation

public struct Songs {
    let albumpic_big: String?
    let albumpic_small: String?
    let downUrl: String?
    let m4a: String?
    let songName: String?
    
    init(albumpic_big: String?,albumpic_small: String?,downUrl: String?,m4a: String?,songName: String?) {
        self.albumpic_big = albumpic_big
        self.albumpic_small = albumpic_small
        self.downUrl = downUrl
        self.m4a = m4a
        self.songName = songName
    }
}