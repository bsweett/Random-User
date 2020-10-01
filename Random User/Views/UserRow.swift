//
//  UserRow.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import SwiftUI

struct UserRow: View {
    var user: User

    var body: some View {
        EmptyView()
    }

}

struct UserRowPreviews: PreviewProvider {
    static var previews: some View {
        UserRow(user: usersData.results[0])
            .previewLayout(
                .fixed(width: 300, height: 70)
            )
    }
}
