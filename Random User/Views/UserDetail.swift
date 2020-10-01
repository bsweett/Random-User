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
        VStack {
            AsyncImage(
                url: user.picture?.url,
                placeholder: { Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 36, height: 36)
                },
                image: { Image(uiImage: $0).resizable() }
            )
            .frame(width: 150, height: 150)
            .cornerRadius(75)
            VStack(alignment: .leading) {
                Text(user.name.full)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(user.location.city ?? "")
                        .font(.subheadline)
                    Spacer()
                    Text(user.gender ?? "")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct UserDetailPreviews: PreviewProvider {
    static var previews: some View {
        UserDetail(user: usersData.results[0])
    }
}
