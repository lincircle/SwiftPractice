//
//  GameScene.swift
//  Label
//
//  Created by Yuhsuan Lin on 2017/3/5.
//  Copyright © 2017年 Yuhsuan Lin. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let label = SKLabelNode(text: "Hello SpriteKit!")
    
    override func didMove(to view: SKView) {
        
        label.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        
        label.fontSize = 45
        
        label.fontColor = SKColor.yellow
        
        label.fontName = "Avenir"
        
        addChild(label)
        
    }
}
