//
//  ListRowView.swift
//  TodoApp
//
//  Created by Vít Nademlejnský on 04.08.2023.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(isCompleted: true, title: "Item 1")
    static var item2 = ItemModel(isCompleted: false, title: "Item 2")
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
    }
}
