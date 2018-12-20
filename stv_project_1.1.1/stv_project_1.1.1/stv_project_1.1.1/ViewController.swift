//
//  ViewController.swift
//  stv_project_1.1.1
//
//  Created by 米田大弥 on 2018/12/20.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let name: String = "名前"
    let number: Int = 10
    let decimal: Double = 0.01
    let deliberation: Bool = true
    let user: [String: String] = ["apple": "りんご", "grape": "ぶどう", "peach": "桃"]
    let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name)
        print(number)
        print(decimal)
        print(deliberation)
        print(user)
        print(numbers)
        print(numbers[3])
    }
}
