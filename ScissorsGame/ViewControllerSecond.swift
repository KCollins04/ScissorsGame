//
//  ViewControllerSecond.swift
//  ScissorsGame
//
//  Created by KELSEY COLLINS on 11/14/22.
//

import UIKit

class ViewControllerSecond: UIViewController {

  
    
    @IBOutlet weak var countdown: UILabel!
    
    @IBOutlet weak var imageSecond: UIImageView!
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var pointSecond: UILabel!
    @IBOutlet weak var pointOne: UILabel!

    var count = 0
    var count2 = 0
 var t = 0
 var a = 0
    let defaults  = UserDefaults.standard
 
        override func viewDidLoad() {
        super.viewDidLoad()
            if let p = defaults.object(forKey: "Player Points"){
                count = p as! Int
            
                  pointOne.text = "\(count)"
            }
            if let z = defaults.object(forKey: "Computer Points"){
                count2 = z as! Int
               
                  pointSecond.text = "\(count2)"
                
            }
    }
    
    
    @IBAction func buttonRock(_ sender: UIButton) {
        imageOne.image = UIImage(named: "rock")
      t=0
        a = Int.random(in: 0..<3)
        print(a)
      let store = Game.init(p: t, c: a)
        
        pointSecond.text = "\(points2())"
          pointOne.text = "\(points1())"
        let cImage = imageComputer(v: a)
      imageSecond.image = UIImage(named: cImage)
        countdown.text = store.wl

    }
    
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        imageOne.image = UIImage(named: "paper")
       t=1
          a = Int.random(in: 0..<3)
        print(a)
        let store = Game.init(p: t, c: a)
        pointSecond.text = "\(points2())"
          pointOne.text = "\(points1())"
          let cImage = imageComputer(v: a)
        imageSecond.image = UIImage(named: cImage)
          countdown.text = store.wl
    }
    
    
    @IBAction func buttonScissors(_ sender: UIButton) {
        imageOne.image = UIImage(named: "Scissors")
        t=2
        a = Int.random(in: 0..<3)
        print(a)
        let store = Game.init(p: t, c: a)
        pointSecond.text = "\(points2())"
          pointOne.text = "\(points1())"
          let cImage = imageComputer(v: a)
        imageSecond.image = UIImage(named: cImage)
          countdown.text = store.wl

    }
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
           count=0
        count2=0
        pointSecond.text = "\(count)"
          pointOne.text = "\(count2)"
        
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
            num = "Scissors"
        }
        return num
    }

    func points1()-> Int{
        let store = Game.init(p: t, c: a)
        if store.wl == "Win"{
            count = count + 1
        }
        else if store.wl == "Lost"{
            count = count - 1
        }
        
        return count
    }
    
    
    func points2()-> Int{
        let store = Game.init(p: t, c: a)
        if store.wl == "Win"{
            count2 = count2 - 1
            
        }
        else if store.wl == "Lost"{
            count2 = count2 + 1
            
        }
    
        return count2
    }

   
    @IBAction func saveButton(_ sender: UIButton) {
      
        defaults.set(count, forKey: "Player Points")
        defaults.set(count2, forKey: "Computer Points")
    }
    
    
    
}
