//
//  ThirdViewController.swift
//  PlantHabit
//
//  Created by 박진영 on 2019/12/29.
//  Copyright © 2019 Jinyeong Park. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var nowDate: UILabel!
    @IBOutlet var selectDate: UILabel!
    
    let timeSelector: Selector = #selector(ThirdViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBAction func selectDateTime(_ sender: UIDatePicker) {
        let pickView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        selectDate.text = "선택시간 : " + formatter.string(from: pickView.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
//        nowDate.text = String(count)
//        count += 1
        
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        nowDate.text = "현재시간 : " + formatter.string(from: date as Date)
    }
}
