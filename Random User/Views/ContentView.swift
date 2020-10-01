//
//  ContentView.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var viewModel: UsersViewModel
    //@State private var showingChildView = false

    var body: some View {
        NavigationView {
            VStack {
                viewModel.resource.isLoading {
                    Group {
                        Spacer()
                        ProgressView("Loading...")
                        Spacer()
                    }
                }

                viewModel.resource.hasError() { error in
                    ErrorView(text: "\(error)")
                }

                viewModel.resource.hasResource() { users in
                    UserListView(users: users.results)
                }
            }
            .navigationBarTitle(Text("Users"))
        }.onAppear(perform: {
            viewModel.onAppear()
        })
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        let network = RandomUserNetwork()
        let viewModel = UsersViewModel(with: network)
        ContentView().environmentObject(viewModel)
    }
}
