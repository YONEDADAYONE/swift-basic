//
//  ViewController.swift
//  stv_project_2.1.7
//
//  Created by 米田大弥 on 2018/12/19.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        inputTextField.delegate = self
        inputTextField.keyboardType = UIKeyboardType.default
        
    }
    
    //文字数を制限するメソッド
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // 文字数最大を決める.
        let maxLength: Int = 30
        
        // 入力済みの文字と入力された文字を合わせて取得.
        let str = inputTextField.text! + string
        
        // 文字数がmaxLength以下ならtrueを返す.
        if str.characters.count < maxLength {
            return true
        }
        print("6文字を超えています")
        return false
    }
    
    //文字が入力されていない場合エンターキーを非活性にするメソッド
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if inputTextField.text == "" {
            print("文字を入力してください")
        }else if inputTextField.text != "" {
        inputTextField.resignFirstResponder()
        }
        return true
    }
    
    //背景をタップしたらキーボードが閉じるメソッド
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputTextField.text = inputTextField.text
        self.view.endEditing(true)
    }


}

