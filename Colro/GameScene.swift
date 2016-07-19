//
//  GameScene.swift
//  Colro
//
//  Created by Jack  on 7/17/16.
//  Copyright © 2016 Pi. All rights reserved.
//

import SpriteKit
import GameplayKit

let level = 0
var genLayer = 0
var genRow = 0
let colorBox = SKShapeNode(rect: CGRect(x: 0, y: 0, width: (sceneWidth - edgeHorizontalBuffer * 2), height: 160), cornerRadius: 10)
var box = SKShapeNode()
var boxArray: [SKShapeNode] = []
var boxColorName: String = "Red"

class GameScene: SKScene {
    
    override func didMove(to view: SKView){
        colorBox.position = CGPoint(x: edgeHorizontalBuffer, y: sceneHeight - 180)
        backgroundColor = SKColor.white()
        generateBoxes()
        generateBoxes()
        generateBoxes()
        generateBoxes()
        generateBoxes()
        generateBoxes()
        addChild(colorBox)
        setBackgroundColor()
    }
    
    func generateBoxes(){
        genBoxPos().generateBoxPosition()
        box = SKShapeNode(rect: CGRect(x: 0, y: 0, width: boxSize, height: boxSize), cornerRadius: 10)
        randomColor().getRandomColor()
        box.position = CGPoint(x: boxXPos, y: boxYPos)
        box.fillColor = boxRandomColor
        box.name = boxColorName
        boxArray.append(box)
        genRow += 1
        if genRow % (level + 3) == 0{
            print(genRow)
            genLayer += 1
            genRow = 0
        }
        addChild(box)
    }
    func setBackgroundColor(){
        colorBox.fillColor = SKColor.green()
        print(box)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            
            let location = touch.location(in: self)
            
            for boxes in boxArray{
                if boxes.contains(location){
                    print(boxes.name)
                }
        
        }
    }
    
}
}
