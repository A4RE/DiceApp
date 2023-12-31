//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - PROPERTIES
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var diceArray: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // - WHEN VIEW LOAD - CHANGE FIRST IMAGE TO SIX
        diceImageViewOne.image = UIImage(named: "DiceSix")
        diceImageViewTwo.image = UIImage(named: "DiceTwo")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // We take values from array by indicies we randomly generate
        diceImageViewOne.image = UIImage(named: "\(diceArray[Int.random(in: 0..<diceArray.count)])")
        diceImageViewTwo.image = UIImage(named: "\(diceArray[Int.random(in: 0..<diceArray.count)])")
    }
    
}

