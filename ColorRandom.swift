//
//  ColorRandom.swift
//  Colro
//
//  Created by Jack  on 7/17/16.
//  Copyright © 2016 Pi. All rights reserved.
//

import SpriteKit

var boxRandomColor: SKColor = SKColor.black()

class randomColor {
    var num: UInt32 = 0
    
    func getRandomColor(){
        num = arc4random_uniform(4)
        
        switch num {
        case 0 :
            boxRandomColor = SKColor.red()
            boxColorName = "Red"
        case 1:
            boxRandomColor = SKColor.blue()
            boxColorName = "Blue"
        case 2 :
            boxRandomColor = SKColor.yellow()
            boxColorName = "Yellow"
        case 3 :
            boxRandomColor = SKColor.green()
            boxColorName = "Green"
        default:
            boxRandomColor = SKColor.black()
        }
    }
    

}
