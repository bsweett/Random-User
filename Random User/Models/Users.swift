//
//  Users.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct Users: Decodable {

    struct Info: Decodable {
        let seed: String?
        let results: Int
        let page: Int
        let version: String
    }

    let results: [User]
    let info: Info

}
