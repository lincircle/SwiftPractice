//
//  GameViewController.swift
//  Label
//
//  Created by Yuhsuan Lin on 2017/3/5.
//  Copyright © 2017年 Yuhsuan Lin. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        
        let scene = GameScene(size: view.frame.size)
        
        let skView = view as! SKView
        
        skView.presentScene(scene)
        
    }

}
