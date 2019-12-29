//
//  FirstViewController.swift
//  PlantHabit
//
//  Created by 박진영 on 2019/12/28.
//  Copyright © 2019 Jinyeong Park. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var inputTxt: UITextField!
    @IBOutlet var outputLbl: UILabel!
    
    @IBAction func sendBtn(_ sender: UIButton) {
        outputLbl.text = inputTxt.text!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

