//
//  Game.swift
//  ScissorsGame
//
//  Created by KELSEY COLLINS on 11/15/22.
//

import Foundation

class Game{
    var count = 0
    var count2 = 0
    var wl = ""
    
    
    
    
    init(p: Int, c: Int){
        switch (p,c) {
        case (0,1): wl = "Lost"
        case (0,2): wl = "Win"
        case (1,0): wl = "Win"
        case (1,2): wl = "Lost"
        case (2,0): wl = "Lost"
        case (2,1): wl = "Win"
        default: wl = "Draw"
        }
     

    }
    
    
    
    
    
    
}
    
    
    

