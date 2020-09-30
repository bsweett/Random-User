//
//  User.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct User: Decodable {

    let gender: String?
    let name: Name
    let location: Location
    let email: String?
    let phone: String?
    let cell: String?
    let picture: Picture?

}
