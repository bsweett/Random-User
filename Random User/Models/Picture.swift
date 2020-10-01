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

    var thumbURL: URL? {
        guard let string = medium else { return nil }
        return URL(string: string)
    }

    var profileURL: URL? {
        guard let string = large else { return nil }
        return URL(string: string)
    }

}
