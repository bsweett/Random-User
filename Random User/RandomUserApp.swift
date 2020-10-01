//
//  RandomUserApp.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import SwiftUI

@main
struct RandomUserApp: App {

    let network = RandomUserNetwork()

    var body: some Scene {
        WindowGroup {
            let viewModel = UsersViewModel(with: network)
            ContentView().environmentObject(viewModel)
        }
    }
}
