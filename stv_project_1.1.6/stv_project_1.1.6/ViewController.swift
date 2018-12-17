//
//  ViewController.swift
//  stv_project_1.1.6
//
//  Created by 米田大弥 on 2018/12/17.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = NSLocalizedString("test", comment: "")
        
    }


}

