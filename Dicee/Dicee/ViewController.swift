//
//  ViewController.swift
//  Dicee
//
//  Created by jay patel on 12/19/17.
//  Copyright © 2017 jay patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var RandomDiceIndex1 : Int = 0
    var RandomDiceIndex2 : Int = 0

   
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2" , "dice3" , "dice4", "dice5", "dice6" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UpdateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        UpdateDiceImages()
    
    }
    func UpdateDiceImages(){
        RandomDiceIndex1 = Int(arc4random_uniform(6))
        RandomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[RandomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[RandomDiceIndex2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        UpdateDiceImages()
    }

}

