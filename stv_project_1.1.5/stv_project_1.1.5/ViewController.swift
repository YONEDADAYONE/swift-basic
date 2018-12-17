//
//  ViewController.swift
//  stv_project_1.1.5
//
//  Created by 米田大弥 on 2018/12/17.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



class Account {
    
    var test = Test()
    var sanka:FavoriteProgrammingLanguage = FavoriteProgrammingLanguage(Participation: "参加する。")
    
    func lastresult() {
        test.comment()
        sanka.result()
    }
}
