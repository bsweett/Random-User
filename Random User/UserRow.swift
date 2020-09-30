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
        Text(user.name.full)
            .font(.body)
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: usersData.results[0])
    }
}
