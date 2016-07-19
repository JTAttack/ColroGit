//
//  GameViewController.swift
//  Colro
//
//  Created by Jack  on 7/17/16.
//  Copyright © 2016 Pi. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

var sceneWidth: Double = 375.0
var sceneHeight: Double = 300.0

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        sceneWidth = Double(skView.bounds.size.width)
        sceneHeight = Double(skView.bounds.size.height)
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
