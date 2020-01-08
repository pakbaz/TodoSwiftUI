//
//  PostListViewModel.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/4/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class ItemListViewModel: ObservableObject {
    init() {
        fetchItems()
    }
    
    @Published var items = [Item]() {
        didSet{
            didChange.send(self)
        }
    }
    func fetchItems(){
        Webservice().getAllItems {
            self.items = $0
        }
    }
    let didChange = PassthroughSubject<ItemListViewModel,Never>()
}
