//
//  ItemModel.swift
//  TodoApp
//
//  Created by Vít Nademlejnský on 02.08.2023.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id: String
    
    init(id: String = UUID().uuidString, isCompleted: Bool, title: String) {
        self.id = id
        self.isCompleted = isCompleted
        self.title = title
    }
    
    func updateCompleted() -> ItemModel {
        return ItemModel(id: id, isCompleted: !isCompleted, title: title)
    }
    
    
}
