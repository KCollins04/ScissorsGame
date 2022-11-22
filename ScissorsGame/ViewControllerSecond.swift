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

 var t = 0
 var a = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func buttonRock(_ sender: UIButton) {
        imageOne.image = UIImage(named: "rock")
      t=0
        a = Int.random(in: 0..<3)
      let store = Game.init(p: t, c: a)
      pointSecond.text = "\(store.count2)"
        pointOne.text = "\(store.count)"
      var cImage = imageComputer(v: a)
      imageSecond.image = UIImage(named: cImage)
        
    }
    
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        imageOne.image = UIImage(named: "paper")
       t=1
          a = Int.random(in: 0..<3)
        let store = Game.init(p: t, c: a)
        pointSecond.text = "\(store.count2)"
          pointOne.text = "\(store.count)"
        var cImage = imageComputer(v: a)
        imageSecond.image = UIImage(named: cImage)
          
    }
    
    
    @IBAction func buttonScissors(_ sender: UIButton) {
        imageOne.image = UIImage(named: "Scissors")
        t=2
        a = Int.random(in: 0..<3)
      let store = Game.init(p: t, c: a)
      pointSecond.text = "\(store.count2)"
        pointOne.text = "\(store.count)"
      var cImage = imageComputer(v: a)
      imageSecond.image = UIImage(named: cImage)
        
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



}
