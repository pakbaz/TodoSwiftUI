//
//  AddItemViewModel.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/6/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class AddItemViewModel: ObservableObject {
    init() {
        self.text = "Text"
        self.description = "Description"
        self.category = 0
    }
    public var text: String
    public var description: String
    public var category: Int
    
    
    public func addItem()
    {
        Webservice().postNewItem(newItem: Item(id: "", text: self.text, description: self.description, category: self.category))
    }
}
