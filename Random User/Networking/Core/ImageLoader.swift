//
//  ImageLoader.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import Combine
import SwiftUI
import Foundation

class ImageLoader: ObservableObject {
    @Published var image: UIImage?

    private let url: URL
    private var cancellable: AnyCancellable?

    init(url: URL) {
        self.url = url
    }

    deinit {
        cancel()
    }

    func load(session: URLSession = .shared, scheduler: DispatchQueue = .main) {
        cancellable = session.dataTaskPublisher(for: url)
                        .map { UIImage(data: $0.data) }
                        .replaceError(with: nil)
                        .receive(on: scheduler)
                        .sink { [weak self] in self?.image = $0 }
    }

    func cancel() {
        cancellable?.cancel()
    }
}
