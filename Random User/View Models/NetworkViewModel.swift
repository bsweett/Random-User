//
//  NetworkViewModel.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation
import Combine

protocol NetworkViewModel: ObservableObject {

    associatedtype ResponseType: Decodable

    var objectWillChange: ObservableObjectPublisher { get }
    var resource: Resource<ResponseType> { get set }
    var network: Networkable { get set }
    var route: Routable { get }
    var set: Set<AnyCancellable> { get set }

    func onAppear(session: URLSession, scheduler: RunLoop)

}

extension NetworkViewModel {

    func get(route: Routable, session: URLSession = .shared, scheduler: RunLoop = .main) {
        let publisher = network.get(route: route, session: session, scheduler: scheduler) as AnyPublisher<ResponseType, Error>
        publisher.receive(on: RunLoop.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    self.resource = .error(error)
                    self.objectWillChange.send()
                default:
                    break
                }
            }, receiveValue: { decodable in
                self.resource = .success(decodable)
                self.objectWillChange.send()
            })
            .store(in: &set)
    }

    func onAppear(session: URLSession = .shared, scheduler: RunLoop = .main) {
        get(route: route, session: session, scheduler: scheduler)
    }

}
