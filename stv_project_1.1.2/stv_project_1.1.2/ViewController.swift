//
//  ViewController.swift
//  stv_project_1.1.2
//
//  Created by 米田大弥 on 2018/12/15.
//  Copyright © 2018年 hiroya. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    let user: [String: String] = ["name": "Yoneda"]
    var suuji: Int? = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callName()
        callSuuji()
        callChange()
    }
    
    func callName() {
        if let user: String = user["name"] {
            print(user)
        }
    }
    
    func callSuuji() {
        let result: Int = suuji ?? 5
        print(result)
    }
    
    func callChange() {
        let change: String? = "Optional Chaining"
        print(change as Any)
    }
}
