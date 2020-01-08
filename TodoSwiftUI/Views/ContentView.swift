//
//  ContentView.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/2/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ItemListViewModel()
    @State private var showAddItemView : Bool = false
    
    var body: some View {
         NavigationView {
            ItemListView(items: model.items)
               .navigationBarTitle("Todo")
               .navigationBarItems(trailing:
                HStack{
                    Button("Add") {
                       //Add Item View
                        self.showAddItemView.toggle()
                       }
                    .sheet(isPresented: self.$showAddItemView) {
                        AddItemView()
                   }
                    Button("Refresh"){
                        self.model.fetchItems()
                    }
                }
               )
            
       }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
