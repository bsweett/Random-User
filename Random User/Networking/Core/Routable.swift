//
//  Routable.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

protocol Routable {

    var path: String { get }
    var method: HTTPMethod { get }
    var headers: [String: String]? { get }

}

extension Routable {

    var headers: [String: String]? {
        return nil
    }

    func create(for api: API) -> URLRequest {
        let string = api.rawValue + path
        guard let url = URL(string: string) else {
            preconditionFailure("Could not create URL from \(string)")
        }

        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = headers
        request.httpMethod = method.rawValue.uppercased()
        return request
    }

}
