//
//  Resource+SwiftUI.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import SwiftUI

extension Resource {

    func isLoading<Content: View>(@ViewBuilder content: () -> Content) -> Content? {
        guard loading else { return nil }
        return content()
    }

    func hasResource<Content: View>(@ViewBuilder content: (T) -> Content) -> Content? {
        guard let value = value else { return nil }
        return content(value)
    }

    func hasError<Content: View>(@ViewBuilder content: (Error) -> Content) -> Content? {
        guard let error = error else { return nil }
        return content(error)
    }

}
