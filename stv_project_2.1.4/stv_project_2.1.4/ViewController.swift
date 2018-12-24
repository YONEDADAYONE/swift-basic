//
//  ViewController.swift
//  stv_project_2.1.4
//
//  Created by 米田大弥 on 2018/12/18.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myButton(_ sender: UIButton) {

        let alert: UIAlertController = UIAlertController(title: "アラート表示", message: "保存してもいいですか？", preferredStyle: UIAlertController.Style.alert)
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction!) -> Void in print("OK") })
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "cancel" , style: UIAlertAction.Style.cancel , handler: { (action: UIAlertAction!) -> Void in
print("Cancel") })
        
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
