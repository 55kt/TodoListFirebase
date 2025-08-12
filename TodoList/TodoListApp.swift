//
//  TodoListApp.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
