//
//  Ramp.swift
//  ramp-up
//
//  Created by Ziyad almohisen on 28/06/2019.
//  Copyright © 2019 zaymeem. All rights reserved.
//

import Foundation
import SceneKit

class Ramp {
    
    class func getRampForName(rampName: String) -> SCNNode {
        switch rampName{
        case "pipe":
            return Ramp.getPipe()
        case "pyramid":
            return Ramp.getPyramid()
        case "quarter":
            return Ramp.getQuarter()
        default:
            return Ramp.getPipe()
        }
    }
    
    class func getPipe() -> SCNNode {
        
      
        
        let obj = SCNScene(named: "art.scnassets/pipe.dae")
        let node = obj?.rootNode.childNode(withName: "pipe", recursively: true)!
        node?.scale = SCNVector3Make(0.0018, 0.0018, 0.0018)
        node?.position = SCNVector3Make(0, 1.2, -1)
        return node!
    }
    
    class func getPyramid() -> SCNNode {
       let  obj = SCNScene(named: "art.scnassets/pyramid.dae")
        let node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)!
        node?.scale = SCNVector3Make(0.0042, 0.0042, 0.0042)
        node?.position = SCNVector3Make(0, 0.2, -0.1)
        return node!
    }
    
    class func getQuarter() -> SCNNode {
       let  obj = SCNScene(named: "art.scnassets/quarter.dae")
       let  node = obj?.rootNode.childNode(withName: "quarter", recursively: true)!
        
        node?.scale = SCNVector3Make(0.0042, 0.0042, 0.0042)
        node?.position = SCNVector3Make(0, -0.8, -1)
        return node!
    }
    
    class func startRotataion(node: SCNNode) {
         let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
        node.runAction(rotate)
    }
    
}
