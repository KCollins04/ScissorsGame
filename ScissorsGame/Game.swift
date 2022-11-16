//
//  Game.swift
//  ScissorsGame
//
//  Created by KELSEY COLLINS on 11/15/22.
//

import Foundation

class Game{
    var count = 0
    var pick = 0
    
    
    init(p: Int){
        pick = p
        if(p<1){
            print("Win")
            count++
        }
        else if (p )
            
    }
  
    
    func reset(){
        count = 0
    }
    
}
