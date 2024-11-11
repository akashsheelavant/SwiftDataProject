//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Akash Sheelavant on 11/11/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
