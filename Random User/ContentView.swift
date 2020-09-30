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
        VStack {
            viewModel.resource.isLoading {
                Group  {
                    Spacer()
                    ProgressView()
                    Spacer()
                }
            }

            viewModel.resource.hasError() { error in
                Group {
                    Spacer()
                    Label(error.localizedDescription, systemImage: "exclamationmark.triangle")
                    Spacer()
                }
            }

            viewModel.resource.hasResource() { users in
            }
        }.onAppear(perform: {
            viewModel.onAppear()
        })
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
