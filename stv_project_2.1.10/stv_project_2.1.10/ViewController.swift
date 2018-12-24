//
//  ViewController.swift
//  stv_project_2.1.10
//
//  Created by 米田大弥 on 2018/12/24.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,
UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var table:UITableView!
    
    // section毎の画像配列
    let imgArray: NSArray = ["1","2","3","4","5","6","7","8"]
    
    let label2Array: NSArray = ["ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。","ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。ここに文字が入ります。"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //セルを可変にする
        table.rowHeight = UITableView.automaticDimension
    }
    
    //Table Viewのセルの数を指定
    func tableView(_ table: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    //各セルの要素を設定する
    func tableView(_ table: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCell(withIdentifier: "tableCell",
                                             for: indexPath)
        
        let img = UIImage(named: imgArray[indexPath.row] as! String)
        
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell.viewWithTag(2) as! UILabel
        label1.text = "No." + String(indexPath.row + 1)
        
        return cell
    }
    // Cell の高さを125にする
    func tableView(_ table: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
}
