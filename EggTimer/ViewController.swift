//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        indentify(nome: sender.currentTitle!)
    }
    

}
func indentify(nome: String){
    print(nome)
}
