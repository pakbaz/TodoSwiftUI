//
//  ItemListView.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/6/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import SwiftUI

struct ItemListView: View {
    var items: [Item]
    var body: some View {
        List (items){item in
        
        NavigationLink(destination: DetailView(item: item)) {
            HStack {
                ZStack {
                    Color(ItemCategoryToColor(category: item.category))
                    Text(ItemCategoryToString(category: item.category)).foregroundColor(.white)
                }.frame(width:100, height: 50)
                VStack (alignment: .leading) {
                    Text(item.text).font(.body)
                    Text(item.description).font(.caption)
                }

            }
        }.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    
    static var previews: some View {

        ItemListView(items: [
            Item(id: "1", text: "Item 1", description: "Description for Item 1", category: 1),
            Item(id: "2", text: "Item 2", description: "Description for Item 2", category: 2),
            Item(id: "3", text: "Item 3", description: "Description for Item 3", category: 0),
            Item(id: "4", text: "Item 4", description: "Description for Item 4", category: 2),
            Item(id: "5", text: "Item 5", description: "Description for Item 5", category: 0),
            Item(id: "6", text: "Item 6", description: "Description for Item 6", category: 1)
        ])
    }
}
