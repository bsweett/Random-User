//
//  ContentView.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var viewModel: UsersViewModel

    var body: some View {
        EmptyView()
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        let network = RandomUserNetwork()
        let viewModel = UsersViewModel(with: network)
        ContentView().environmentObject(viewModel)
    }
}
