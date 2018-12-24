//
//  ViewController.swift
//  stv_project_2.1.11
//
//  Created by 米田大弥 on 2018/12/24.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,
UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var table:UITableView!
    
    // section毎の画像配列
    let imgArray1: NSArray = ["1","2"]
    let imgArray2: NSArray = ["3","4","5","6"]
    let imgArray3: NSArray = ["7","8"]
    
    let labelArray1: NSArray = ["ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。","ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。"]
    let labelArray2: NSArray = ["ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。","ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。","ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。","ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。"]
    
    //セクション名
    let sectionTitle: NSArray = ["セクション1","セクション2","セクション3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //セルを可変にする
        table.rowHeight = UITableView.automaticDimension
    }
    
    // Section数
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    // Sectionのタイトル
    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section] as? String
    }
    
    // Table Viewのセルの数を指定
    func tableView(_ table: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return imgArray1.count
        }
        else if section == 1 {
            return imgArray2.count
        }
        else if section == 2 {
            return imgArray3.count
        }
        else{
            return 0
        }
    }
    //各セルの要素を設定する
    func tableView(_ table: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCell(withIdentifier: "tableCell",
                                             for: indexPath)
        
        // Section毎に処理を分ける。
        if indexPath.section == 0 {
            print("indexPath.section == 0")
            
            let img = UIImage(named:imgArray1[indexPath.row] as! String)
            // Tag番号 1 で UIImageView インスタンスの生成
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = img
            
            // Tag番号 ２ で UILabel インスタンスの生成
            let label = cell.viewWithTag(2) as! UILabel
            label.text = String(describing: labelArray1[indexPath.row])
        }
        else if indexPath.section == 1 {
            print("indexPath.section == 1")
            let img = UIImage(named:imgArray2[indexPath.row] as! String)
            // Tag番号 1 で UIImageView インスタンスの生成
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = img
            
            // Tag番号 ２ で UILabel インスタンスの生成
            let label = cell.viewWithTag(2) as! UILabel
            label.text = String(describing: labelArray2[indexPath.row])
        }
        else if indexPath.section == 2 {
            print("indexPath.section == 2")
            let img = UIImage(named:imgArray3[indexPath.row] as! String)
            // Tag番号 1 で UIImageView インスタンスの生成
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = img
            
        }
        
        return cell
    }
    
    // Cell の高さを125にする
    func tableView(_ table: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
}
