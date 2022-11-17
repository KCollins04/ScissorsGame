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
    var pick = 0
    var wl = ""
    var imageG = ""
    
    
    init(p: Int, c: Int){
        pick = p
        if(p<c){
            wl = "Win"
            count+=1
        }
        else if (p>c){
            wl = "Win"
            count+=1
        }
        else if (p == 2 && c == 1){
            if(p>c){
              wl = "Win"
                count+=1
            }
           }
        else{
            wl = "lost"
            count2 += 1
        }
        }
            
    func imc(v: Int){
        if v == 0 {
            imageG = "rock"
        }
        else if v == 1 {
            imageG = "paper"
        }
        else if v == 2 {
            imageG = "scissors"
        }
    }
    
    
    
    
    func reset(){
        count=0
    }
    
    
    
    
    }
  
    
    
    

