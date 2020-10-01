//
//  UserDetail.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-10-01.
//

import SwiftUI

struct UserDetail: View {
    let user: User

    var body: some View {
        EmptyView()
    }
}

struct UserDetailPreviews: PreviewProvider {
    static var previews: some View {
        UserDetail(user: usersData.results[0])
    }
}
