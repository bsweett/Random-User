//
//  Networkable.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation
import Combine

protocol Networkable {

    var decoder: JSONDecoder { get set }
    var api: API { get set }

}

extension Networkable {

    func get<T: Decodable>(route: Routable, session: URLSession = .shared, scheduler: RunLoop = .main) -> AnyPublisher<T, Error> {
        let request = route.create(for: api)
        return session
            .dataTaskPublisher(for: request)
            .tryCompactMap { result in
                try self.decoder.decode(T.self, from: result.data)
            }
            .receive(on: scheduler)
            .eraseToAnyPublisher()
    }

}
