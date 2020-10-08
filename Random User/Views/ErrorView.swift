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
        VStack(spacing: 8) {
            Image(systemName: "exclamationmark.triangle")
            Text(text)
        }
        .foregroundColor(.red)
        .font(.body)
        .multilineTextAlignment(.center)
        .padding()
    }
}

struct ErrorViewPreviews: PreviewProvider {
    static var previews: some View {
        ErrorView(text: "Some super long error message that may take up more space.")
            .preferredColorScheme(.dark)
            .environment(\.sizeCategory, .extraExtraExtraLarge)
            .previewLayout(
                .fixed(width: 400, height: 150)
            )
    }
}
