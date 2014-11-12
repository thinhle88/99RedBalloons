//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Thinh Le on 11/11/14.
//  Copyright (c) 2014 Busyworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var balloonsLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    


    //add a property that is an array; hold our 'Balloon' instances  in 'balloon' array.
    
    var balloons:[Balloon] = []
        var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createBalloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonBarButtonItemPressed(sender: UIBarButtonItem) {
        
        let balloon = balloons[currentIndex]
        
        balloonsLabel.text = "\(balloon.number) balloon"
        backgroundImageView.image = balloon.image
        
        currentIndex += 1
        
    }

    // Create function to assign a number and distribute random number to balloon
    // Add a variable and set number of balloon to balloonCount. Each instanc will have a different number.
    // Create a randomnumber from 1 - 4
    // Switch statement to change out randomnumber and switch out image for each balloon.
    
    
    func createBalloons () {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            
            // assign variable 'balloon' to 'Balloon' instance
            
            var balloon = Balloon()
            balloon.number = balloonCount
            
            // assign random background image
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            // add balloon instance to balloon array
        self.balloons.append(balloon)
                
            //test commit
        }
    }
    
}

