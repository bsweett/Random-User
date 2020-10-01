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
        EmptyView()
    }
}

struct UserListViewPreviews: PreviewProvider {
    static var previews: some View {
        UserListView(users: usersData.results)
            .previewLayout(
                .fixed(width: 375, height: 900)
            )
    }
}
