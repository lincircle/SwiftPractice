//
//  ViewController.swift
//  LottieDemo
//
//  Created by Yuhsuan Lin on 2017/5/19.
//  Copyright © 2017年 Yuhsuan Lin. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let load_animation = LOTAnimationView(contentsOf: URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/PinJump.json")!)
        
        //let animationView = LOTAnimationView(name: "day_night_cycle")
        
        //載入圖片有兩種方式：一是放在本地端，二是放在遠端伺服器
        
        if let animationView = load_animation {
            
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            
            animationView.center = self.view.center
            
            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            
            animationView.play()
            
            //animationView.loopAnimation = true //循環播放
            
            animationView.animationSpeed = 0.5 //播放速度
            
            //let rotateTransform = CGAffineTransform(rotationAngle: 45.0) //設定角度
            
            //animationView.transform = rotateTransform //可改變動畫角度
            
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
            animationView.transform = minimizeTransform
            
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                animationView.transform = CGAffineTransform.identity
            }, completion: nil)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

