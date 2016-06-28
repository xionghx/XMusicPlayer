//
//  XOnlineMusicListViewController.swift
//  XMusicPlayer
//
//  Created by xionghuanxin on 6/28/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

import UIKit
let onlineMusicTabBarTag = 200

class XOnlineMusicListViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "MUSIC"
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: onlineMusicTabBarTag)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        XSongInfoController.getSongModelWithName("林俊杰") { (songModel, error) in
            let asong = songModel[0]
            print(asong)
    }
}
}