//
//  Post.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/3/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import Foundation


struct Item : Decodable, Hashable, Identifiable, Encodable {
    let id: String
    let text: String
    let description: String
    let category: Int
}



