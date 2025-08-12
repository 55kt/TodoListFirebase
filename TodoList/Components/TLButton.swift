//
//  TLButton.swift
//  TodoList
//
//  Created by Vlad on 10/8/25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "title", background: .orange) {}
}
