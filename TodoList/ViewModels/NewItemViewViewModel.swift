//
//  NewItemViewViewModel.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate: Date = Date()
    @Published var showAlert: Bool = false
    
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        // get current
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // Create model
        let newId = UUID().uuidString
        let newItem = TodoListItem(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        // Save model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId)
            .setData(newItem.toDictionary())
        
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
