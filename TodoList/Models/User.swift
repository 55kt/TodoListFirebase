//
//  User.swift
//  TodoList
//
//  Created by Vlad on 8/8/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
