//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ryan Elizondo-Fallas on 8/22/20.
//  Copyright © 2020 Vibe Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize Numbers
        let leftNumber = Int.random(in: 2...14)
       
        let rightNumber = Int.random(in: 2...14)
        
        //update img views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Compare rando numbers
        if leftNumber > rightNumber {
            //Left side wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            //Right Side wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        else {
            //Tie
        }
    }
    
    
    
    
    
}

