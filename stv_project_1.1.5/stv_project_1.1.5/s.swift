//
//  s.swift
//  stv_project_1.1.5
//
//  Created by 米田大弥 on 2018/12/17.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit
import Foundation

protocol FavoriteProgrammingLanguageDelegate {
    func comment()
}

class Test: FavoriteProgrammingLanguageDelegate {
    func comment() {
        print("swiftができる")
    }
}

class FavoriteProgrammingLanguage {
    var Participation:String
    
    init(Participation:String) {
        self.Participation = Participation
    }
    
    func result() {
        print("インターンに\(Participation)")
    }
}





