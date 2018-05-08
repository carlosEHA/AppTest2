//
//  ViewController.swift
//  AppTest2
//
//  Created by Carlos Eduardo Hernandez Aguilar on 06/05/18.
//  Copyright © 2018 Carlos Eduardo Hernandez Aguilar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let startDate = formatter.date(from: "2010/06/11")
        let finishDate = formatter.date(from: "2012/06/11")
        self.appTest2(start: startDate!, end: finishDate!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func appTest2(start: Date,end :Date){
        
        let calendar = Calendar.current
        var date = start
        let endDate = end
        
        print("Inicio: \(date) final: \(endDate)")
        
        let fmt = DateFormatter()
        fmt.dateFormat = "dd/MM/yyyy"
        var count = 0
        while date <= endDate {
            
            date = calendar.date(byAdding: .day, value: 1, to: date)!
            
            let day = calendar.component(.day, from: date)
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE"
            let dayInWeek = formatter.string(from: date)
            print(day)
            if(dayInWeek == "Sunday" && day == 1){
                count = count + 1
            }
        }
        print("Domingos: \(count)")
    }
}

