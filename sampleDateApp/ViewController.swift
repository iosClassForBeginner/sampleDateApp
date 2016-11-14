//
//  ViewController.swift
//  sampleDateApp
//
//  Created by Muneharu Onoue on 2016/11/14.
//  Copyright © 2016年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDate: UIDatePicker!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calc(_ sender: Any) {
        // 現在日時
        let now = Date()

        // 誕生日
        let birthday = myDate.date

        // 人生最終予定日(８０歳を想定)
        let endday = Date(timeInterval: 60*60*24*365*80, since: birthday)

        // 現在日との差分を計算
        let span = endday.timeIntervalSince(now)
        
        // 秒数を日数に変換
        let anotherdays = Int(span/60/60/24)
        
        // labelに日数を表示
        myLabel.text = "あなたの人生の残日数は約\(anotherdays)日です。"
    }

}

