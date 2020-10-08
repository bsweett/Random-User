//
//  User.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct User: Decodable, Identifiable {

    let id = UUID()

    let gender: String?
    let name: Name
    let location: Location
    let email: String?
    let phone: String?
    let cell: String?
    let picture: Picture?

    var fullName: String {
        return name.full
    }

    var phoneNumber: String {
        return cell ?? phone ?? ""
    }

    var thumbURL: URL? {
        guard let string = picture?.medium else { return nil }
        return URL(string: string)
    }

    var profileURL: URL? {
        guard let string = picture?.large else { return nil }
        return URL(string: string)
    }

}
