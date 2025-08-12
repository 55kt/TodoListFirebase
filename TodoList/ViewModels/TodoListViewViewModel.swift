//
//  TodoListViewViewModel.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import FirebaseFirestore
import Foundation

class TodoListViewViewModel: ObservableObject {
    @Published var showingNewItemView: Bool = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
