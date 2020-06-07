//
//  ViewController.swift
//  Test3
//
//  Created by maya on 2020/06/07.
//  Copyright © 2020 maya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var animalLabel: UILabel!
    
    var narray: Array<String> = ["1番目", "2番目", "3番目", "4番目", "5番目", "6番目"]
    var aarray: Array<String> = ["あ", "い", "う", "え", "お", "ん"]
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func number1() {
         animalLabel.text = aarray[0]
        numberLabel.text = narray[0]
        count = 0
    }
    @IBAction func number2() {
        animalLabel.text = aarray[1]
        numberLabel.text = narray[1]
        count = 1
    }
    @IBAction func number3() {
        animalLabel.text = aarray[2]
        numberLabel.text = narray[2]
        count = 2
    }

    @IBAction func next() {
        if count < 5 {
            count += 1
        } else if count == 5{
            count = 0
        }
        animalLabel.text = aarray[count]
        numberLabel.text = narray[count]
    }
    @IBAction func back() {
        if count > 0 {
            count -= 1
        } else if count == 0 {
            count = 5
        }
        animalLabel.text = aarray[count]
        numberLabel.text = narray[count]
    }
}

