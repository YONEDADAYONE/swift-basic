//
//  ViewController.swift
//  stv_project_1.1.3
//
//  Created by 米田大弥 on 2018/12/21.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let number1 = arc4random_uniform(10)
    let number2 = arc4random_uniform(10)
    let figure: Int = 10
    let names: [String] = ["Suzuki", "Yokoyama", "Tanaka"]
    let tea: String = "EarlGrey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sankouenzanshi()
        peoplename()
        fortest()
        figureTest()
        teaselect()
    }
    
    func sankouenzanshi() {
        let numberResult = (number1 > number2) ? number1 : number2
        print("number1は\(number1)、bumberbは\(number2)、結果は\(numberResult)")
    }
    
    func peoplename() {
        for name in names {
            print("名前は\(name)です")
        }
    }
    
    func fortest() {
        for index in 3...6 {
            if index > 4 {
                print("4以上です")
            } else {
                print("4以下です")
            }
        }
    }
    
    func figureTest() {
        if figure >= 10 {
            print("10以上です")
        } else if figure <= 10 {
            print("10以下です")
        } else if figure == 10 {
            print("10です")
        } else {
            print("わかりません")
        }
    }
    
    func teaselect() {
        switch tea {
        case "EarlGrey":
            print("アールグレイです")
        default:
            print("アールグレイではありません")
        }
    }
}
