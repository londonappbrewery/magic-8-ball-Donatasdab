//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Donatas Dabasinskas on 17/11/2017.
//  Copyright © 2017 Donatas Dabasinskas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    

    
    
    override func viewDidLoad() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage (named: ballArray[randomBallNumber])
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

