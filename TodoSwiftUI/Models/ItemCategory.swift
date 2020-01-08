//
//  ItemCategory.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/5/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import Foundation
import SwiftUI

enum ItemCategory : Int {
    case Shopping = 0
    case Work = 1
    case Personal = 2
}


func ItemCategoryToString (category: Int) -> String {
    
    switch category {
    case 0:
        return "Shopping"
    case 1:
        return "Work"
    case 2:
        return "Personal"
    default:
        return "Unknown"
    }
    
}

func ItemCategoryToColor (category: Int) -> UIColor {
    
    switch category {
    case 0:
        return UIColor.red
    case 1:
        return UIColor.blue
    case 2:
        return UIColor.systemGreen
    default:
        return UIColor.white
    }
    
}
