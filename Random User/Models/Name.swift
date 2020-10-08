//
//  Name.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct Name: Decodable {

    let title: String
    let first: String
    let last: String

    var full: String {
        var parts = PersonNameComponents()
        parts.namePrefix = title.localizedCapitalized
        parts.givenName = first.localizedCapitalized
        parts.familyName = last.localizedCapitalized
        return PersonNameComponentsFormatter.localizedString(from: parts, style: .long)
    }

}
