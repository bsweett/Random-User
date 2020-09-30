//
//  UsersViewModel.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation
import Combine

class UsersViewModel: NetworkViewModel, ObservableObject {

    typealias ResponseType = Users

    var resource: Resource<Users> = .loading
    var network: Networkable
    var route: Routable = RandomUserRoute.api(results: 200)
    var set: Set<AnyCancellable> = Set<AnyCancellable>()

    init(with network: Networkable) {
        self.network = network
    }
}
