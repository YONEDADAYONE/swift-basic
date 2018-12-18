//
//  ViewController.swift
//  stv_project_2.1.5
//
//  Created by 米田大弥 on 2018/12/18.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func tapButton(_ sender: UIButton) {
        
        let alert: UIAlertController = UIAlertController(title: "SNS三社です。", message: "どれにしますか？", preferredStyle:  UIAlertController.Style.actionSheet)
        
        let FacebookActionsheet: UIAlertAction = UIAlertAction(title: "Facebook", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) in
            print("Facebook")
        })
        
        let TwitterActionsheet: UIAlertAction = UIAlertAction(title: "Twitter", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) in
            print("Twitter")
        })
        
        let LineActionsheet: UIAlertAction = UIAlertAction(title: "LINE", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) in
            print("LINE")
        })
        
        alert.addAction(FacebookActionsheet)
        alert.addAction(TwitterActionsheet)
        alert.addAction(LineActionsheet)
        
        self.present(alert, animated: true, completion: nil)
        
}

}
