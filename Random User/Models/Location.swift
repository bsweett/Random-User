//
//  Location.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct Location: Decodable {

    let street: Street
    let city: String?
    let state: String?

    struct Street: Decodable {
        let number: Int
        let name: String?
    }

}
