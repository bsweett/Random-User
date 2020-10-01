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
            AsyncImage(
                url: user.picture?.url,
                placeholder: { Image(systemName: "person.circle") },
                image: { Image(uiImage: $0).resizable() }
            )
            .frame(width: 68, height: 68)
            .cornerRadius(25)
            .padding(4)
            VStack(alignment: .leading) {
                Text(user.name.full)
                    .font(.body)
                Text(user.cell ?? "")
                    .font(.callout)
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
