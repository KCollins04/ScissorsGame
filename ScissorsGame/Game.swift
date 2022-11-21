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
            
    func imageComputer(v: Int)-> String{
        var num=""
        if v == 0 {
            num = "rock"
        }
        else if v == 1 {
            num = "paper"
        }
        else if v == 2 {
            num = "scissors"
        }
        return num
    }
    
    
    
    
    func reset(){
        count=0
    }
    
    
    
    
    }
  
    
    
    

