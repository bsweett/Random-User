//
//  Picture.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct Picture: Decodable {

    let thumbnail: String?
    let medium: String?
    let large: String?

    var url: URL? {
        guard let string = medium else { return nil }
        return URL(string: string)
    }

}
