//
//  DetailView.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/5/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @State var item: Item
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5.0){
            HStack{
                Text(ItemCategoryToString(category: item.category))
                    .padding(10)
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .frame(height:200)
            .background(Color(ItemCategoryToColor(category: item.category)))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)

                
            Text("Text:")
                .font(.headline)
                .padding([.top, .leading])
            Text(item.text)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding([.leading])
            Text("Description:")
                .font(.headline)
                .padding([.top, .leading])
            Text(item.description)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding([.leading])
            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Item(id: "", text: "Item text", description: "Item Description", category: 0))
    }
}
