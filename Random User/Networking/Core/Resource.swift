//
//  Resource.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

enum Resource<T> {

    case loading
    case success(T)
    case error(Error)

}

extension Resource {

    var loading: Bool {
        switch self {
        case .loading:
            return true
        default:
            return false
        }
    }

    var error: Error? {
        switch self {
        case .error(let error):
            return error
        default:
            return nil
        }
    }

    var value: T? {
        switch self {
        case .success(let value):
            return value
        default:
            return nil
        }
    }

    func transform<S>(_ t: (T) -> S) -> Resource<S> {
        switch self {
        case .loading:
            return .loading
        case .error(let error):
            return .error(error)
        case .success(let value):
            return .success(t(value))
        }
    }

}
