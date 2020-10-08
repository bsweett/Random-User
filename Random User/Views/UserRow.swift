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
        HStack {
            ImageView(url: user.thumbURL)
                .frame(width: 68, height: 68)
                .cornerRadius(25)
                .padding(4)
            VStack(alignment: .leading) {
                Text(user.fullName)
                    .font(.body)
                Text(user.phoneNumber)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
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
