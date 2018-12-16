//
//  Account.swift
//  stv_project_1.1.4
//
//  Created by 米田大弥 on 2018/12/16.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class Account: UIViewController {

    let man_name:String = "太郎"
    let woman_name:String = "花子"
    let man_age:Int = 25
    let woman_age:Int = 19
    let man_type:String = "男性"
    let woman_type:String = "女性"
    let man_likes_language = "swift"
    let woman_likes_language = "kotlin"
    
    let random = arc4random_uniform(2)
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Button(_ sender: UIButton) {
        result()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func result(){
        if random == 0 {
            label.text = "あなたの性別は\(man_type)です"
            print("\(man_name)君は、\(man_likes_language)が得意な\(man_age)歳です。")
        } else if random == 1 {
            label.text = "あなたの性別は\(woman_type)です"
            print("\(woman_name)さんは、\(woman_likes_language)が得意な\(woman_age)歳です。")
        } else {
            print("エラー")
        }
    }
    



}
