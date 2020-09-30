//
//  RandomUserRoute.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import UIKit

enum RandomUserRoute {
    case api(results: UInt)
}

extension RandomUserRoute: Routable {

    var path: String {
        switch self {
        case .api(let results):
            return "/api/?results=\(results)"
        }
    }

    var method: HTTPMethod {
        switch self {
        case .api(_):
            return .get
        }
    }

}
