//
//  UserListView.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-10-01.
//

import SwiftUI

struct UserListView: View {
    let users: [User]

    var body: some View {
        List(users) { user in
            NavigationLink(destination: UserDetail(user: user)) {
                UserRow(user: user)
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct UserListViewPreviews: PreviewProvider {
    static var previews: some View {
        UserListView(users: usersData.results)
    }
}
