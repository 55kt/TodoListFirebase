//
//  TodoListItemView.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import SwiftUI

struct TodoListItemView: View {
    @StateObject var viewModel = TodoListItemViewViewModel()
    let item: TodoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .font(.system(size: 25))
                    .foregroundStyle( item.isDone ? .green : .blue)
            }

        }
    }
}

#Preview {
    TodoListItemView(item: .init(id: "123", title: "Get milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
}
