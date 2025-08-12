//
//  TodoListView.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import FirebaseFirestore
import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel: TodoListViewViewModel
    @FirestoreQuery var items: [TodoListItem]
        
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: TodoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    TodoListItemView(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            } label: {
                                Image(systemName: "trash")
                            }
                            .tint(.red)
                        }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Todo List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    TodoListView(userId: "") // paste real user id from firebase for preview
}
