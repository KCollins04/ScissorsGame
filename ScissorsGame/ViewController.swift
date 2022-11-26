//
//  ViewController.swift
//  ScissorsGame
//
//  Created by KELSEY COLLINS on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageScreen: UIImageView!
    var pick=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func changeBackGround(_ sender: UIButton) {
      
    }
    
    enum homeScreen{case image1,image2,image3}
}

