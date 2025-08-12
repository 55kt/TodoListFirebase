//
//  HeaderView.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
            }
            .foregroundStyle(.white)
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Todo Title", subtitle: "Write some subtitle", angle: 15, background: .blue)
}
