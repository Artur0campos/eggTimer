//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let medium = 7
    let hard = 12
   
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        print(hardness!)
    }
    

}
