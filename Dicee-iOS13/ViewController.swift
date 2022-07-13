//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    var leftDiceNumber  = 0
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //WHO            WHAT   = VALUE
        //set image using these two methods
        //1 -> #imageLiteral( and select the image
        //2 -> UIImage(named: "imageName")
        //diceImageView1.image = UIImage(named: "DiceOne")
        
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        //diceImageView1.alpha = 0.5
        
        diceImageView2.image = UIImage(named: "DiceFour")

        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button Got Tapped")
        
        //Task: On button clicked show random dice image to diceImageView1 and diceImageView2
        
        
       
        //Solution 1: Get image array and increase and descrease the number
        /*diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceNumber]

        leftDiceNumber+=1
        rightDiceNumber-=1
        
        if(leftDiceNumber == 6){
            leftDiceNumber = 0
        }
        
        if(rightDiceNumber == -1){
            rightDiceNumber = 5
        }*/
        
        
        
        //Solution 2: Instead of increasing and decreasing number generate random number
        /*
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
        */
        
        
        //Solution 3: Instead of using array in multiple times, store the array in a variable
        /*let diceArray  = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        */
        
        //Solution 4: Instead of generating random number between 0 to 5, call randomElement() function
        let diceArray  = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        
    }
    
}

