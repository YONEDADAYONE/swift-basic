//
//  ViewController.swift
//  stv_project_1.1.2
//
//  Created by 米田大弥 on 2018/12/15.
//  Copyright © 2018年 hiroya. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    let user:[String:String] = ["name":"Yoneda"]
    
    var i:Int? = nil
    
    var change:String? = "オプショナルチェンジングです。"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        call()
        print("abv")
    }
    
    
    
    func call() {
        if user["name"] != nil {
            let name:String = user["name"]!
            print(name)
            
            let resulti:Int = i ?? 10
            print(resulti)
            
            let change2 = change!.lowercased()
            print(change2)
        }
        
    }
    
    
    
}

