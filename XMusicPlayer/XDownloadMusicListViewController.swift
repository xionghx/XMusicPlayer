//
//  XDownloadMusicListViewController.swift
//  XMusicPlayer
//
//  Created by xionghuanxin on 6/28/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

import UIKit
let dwonloadMusicTabBarTag = 201

class XDownloadMusicListViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "DOWNLOADS"
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .Downloads, tag: dwonloadMusicTabBarTag)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("error!!!!!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}
