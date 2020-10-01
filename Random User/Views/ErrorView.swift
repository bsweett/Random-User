//
//  ErrorView.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-10-01.
//

import SwiftUI

struct ErrorView: View {
    var text: String

    var body: some View {
        EmptyView()
    }
}

struct ErrorViewPreviews: PreviewProvider {
    static var previews: some View {
        ErrorView(text: "Some super long error message that may take up more space.")
            .previewLayout(
                .fixed(width: 400, height: 150)
            )
    }
}
