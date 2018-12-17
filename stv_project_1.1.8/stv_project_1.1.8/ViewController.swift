//
//  ViewController.swift
//  stv_project_1.1.8
//
//  Created by 米田大弥 on 2018/12/17.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var image01 = UIImage(named: "toilet_kowai.png")
    var image02 = UIImage(named: "switch_off.png")
    var image03 = UIImage(named: "ebook_reader.png")
    var image04 = UIImage(named: "shingou_hokousya_blue.png")
    var image05 = UIImage(named: "sports_softball_bat.png")
    
    var imgArray:[UIImage] = []
    
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func poi(_ sender: UIButton) {
        imgArray = [image01,image02,image03,image04,image05] as! [UIImage]
        
        let slideShow = Int(arc4random_uniform(5))
        
        imageview.image = imgArray[slideShow]
    }
    

}

