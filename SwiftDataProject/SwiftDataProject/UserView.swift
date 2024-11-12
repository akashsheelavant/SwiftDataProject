//
//  UserView.swift
//  SwiftDataProject
//
//  Created by Akash Sheelavant on 11/12/24.
//

import SwiftData
import SwiftUI

struct UserView: View {
    @Query var users: [User]
    
    init(minimumJoiningDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User>{ user in
            user.joiningDate >= minimumJoiningDate
        }, sort: sortOrder)
    }
    
    var body: some View {
        List(users) { user in
            NavigationLink(value: user) {
                Text(user.name)
            }
        }
    }
}

#Preview {
    UserView(minimumJoiningDate: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}
