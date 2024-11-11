//
//  ContentView.swift
//  SwiftDataProject
//
//  Created by Akash Sheelavant on 11/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment (\.modelContext) var modelContext
    @Query(sort: \User.name) var users: [User]
    @State private var path = [User]()
    
    
    var body: some View {
        NavigationStack(path: $path) {
            List(users) { user in
                NavigationLink(value: user) {
                    Text(user.name)
                }
            }
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                EditUserView(user: user)
            }
            .toolbar(content: {
                Button("Add Uset", systemImage: "plus") {
                    let user = User(name: "", city: "", joiningDate: .now)
                    modelContext.insert(user)
                    path = [user]
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
