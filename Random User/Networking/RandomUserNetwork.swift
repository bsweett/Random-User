//
//  RandomUserNetwork.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Foundation

struct RandomUserNetwork: Networkable {

    var decoder = JSONDecoder()
    var api: API = .randomUsers

}
