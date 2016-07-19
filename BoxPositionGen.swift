//
//  BoxPositionGen.swift
//  Colro
//
//  Created by Jack  on 7/17/16.
//  Copyright © 2016 Pi. All rights reserved.
//

import SpriteKit

var boxSize: Double = 100.0
var boxHorizontalBuffer: Double = 10.0
var edgeHorizontalBuffer: Double = 20.0
var edgeVerticalBuffer: Double = 20.0
var boxVerticalBuffer: Double = 10.0
var boxXPos: Double = 125.0
var boxYPos: Double = 20.0

class genBoxPos{
    
    func generateBoxPosition(){
        boxSize = (sceneWidth) - ((boxHorizontalBuffer * (Double(level) + 2.0)) + (edgeHorizontalBuffer * 2))
        boxSize = boxSize / Double((level + 3))
        boxXPos = edgeHorizontalBuffer + (boxHorizontalBuffer * Double(genRow)) + (Double(genRow) * boxSize)
        boxYPos = edgeVerticalBuffer + (boxVerticalBuffer * Double(genLayer) + Double(genLayer) * boxSize)
        
    }
    
    
    
}
