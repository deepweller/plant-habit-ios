//
//  SecondViewController.swift
//  PlantHabit
//
//  Created by 박진영 on 2019/12/28.
//  Copyright © 2019 Jinyeong Park. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var isZoom = false
    var imgSeoul: UIImage?
    var imgBusan: UIImage?
    
    @IBOutlet var mainImg: UIImageView!
    @IBOutlet var resizeBtn: UIButton!
    @IBOutlet var descLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgSeoul = UIImage(named: "seoul.jpg")
        imgBusan = UIImage(named: "busan.jpg")
        
        mainImg.image = imgSeoul
    }

    @IBAction func resizeBtn(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) {
            newWidth = mainImg.frame.width/scale
            newHeight = mainImg.frame.height/scale
            resizeBtn.setTitle("확대", for: .normal)
        } else {
            newWidth = mainImg.frame.width*scale
            newHeight = mainImg.frame.height*scale
            resizeBtn.setTitle("축소", for: .normal)
        }
        mainImg.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func imgOnOffSwitch(_ sender: UISwitch) {
        if sender.isOn {
            mainImg.image = imgSeoul
            descLbl.text = "Seoul"
        } else {
            mainImg.image = imgBusan
            descLbl.text = "Busan"
        }
    }
}

