//
//  FavoriteProgrammingLanguageDelegate.swift
//  stv_project_1.1.5
//
//  Created by 米田大弥 on 2018/12/22.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import Foundation

protocol FavoriteProgrammingLanguageDelegate {
    //音を鳴らす
     func join()
//    //背景を変える
//    func background()
}

class FavoriteProgrammingLanguage {
    var delegate: FavoriteProgrammingLanguageDelegate?
    func languagege() {
        print("swiftができる。")
        if let message = self.delegate {
            message.join()
//            message.background()
        } else {
            print("swiftはできません。")
        }
    }
}

class Account: FavoriteProgrammingLanguageDelegate {
    func join() {
        print("インターンに参加する。")
    }
    
}
