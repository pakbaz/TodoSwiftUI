//
//  AddItemView.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/5/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var model = AddItemViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title:").padding([.top, .leading])
            TextField("Item Title", text: $model.text)
                .padding(.leading)
            Text("Description:").padding([.top, .leading])
            TextField("Item Title", text: $model.description)
                .padding(.leading)
            Picker(selection: $model.category, label:
            Text("Category: ")) {
                ForEach(0 ..< 3) { index in
                    Text(ItemCategoryToString(category: index)).tag(index)
                }
            }
            
            Button("Insert Item") {
                self.model.addItem()
                self.presentationMode.wrappedValue.dismiss()
            }
            .padding(.all)
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
