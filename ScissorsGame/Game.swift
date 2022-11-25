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
        if p==c{
            wl = "Draw"
        }
        else if p==0, c==1{
            wl="Lost"
        }
        else if p==0, c==2{
            wl="Win"
        }
        else if p==1, c==0{
            wl="Win"
        }
        else if p==1, c==2{
            wl="Lost"
        }
        else if p==2, c==0{
            wl="Lost"
        }
        else if p==2, c==1{
            wl="Win"
        }

    }
    
    
    
    
    
    
}
    
    
    

