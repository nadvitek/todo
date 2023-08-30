//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Vít Nademlejnský on 02.08.2023.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
