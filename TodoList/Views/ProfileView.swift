//
//  ProfileView.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.blue)
                    .frame(width: 125, height: 125)
                
                // Info
                VStack(alignment: .leading) {
                    if let user = viewModel.user {
                        profile(user: user)
                    } else {
                        Text("Loading Profile...")
                    }
                }
                
                Spacer()
                // Sign Out
                TLButton(title: "Log out", background: .red) {
                    viewModel.logout()
                }
                .frame(width: 300, height: 40)
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        HStack {
            Text("Name: ")
            Text(user.name)
        }
        HStack {
            Text("Email: ")
            Text(user.email)
        }
        HStack {
            Text("Member since: ")
            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
        }
    }
}

#Preview {
    ProfileView()
}
