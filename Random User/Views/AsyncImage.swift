//
//  AsyncImage.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-09-30.
//

import SwiftUI

struct AsyncImage<Placeholder: View>: View {
    @StateObject private var loader: ImageLoader
    private let placeholder: Placeholder
    private let image: (UIImage) -> Image

    init(url: URL?,
         @ViewBuilder placeholder: () -> Placeholder,
         @ViewBuilder image: @escaping (UIImage) -> Image = Image.init(uiImage:)) {
        self.placeholder = placeholder()
        self.image = image
        _loader = StateObject(wrappedValue: ImageLoader(url: url, cache: Environment(\.imageCache).wrappedValue))
    }

    var body: some View {
        Group {
            if let image = loader.image {
                self.image(image)
            } else {
                placeholder
            }
        }.onAppear(perform: {
            loader.load()
        }).onDisappear(perform: {
            loader.cancel()
        })
    }
}

struct AsyncImagePreviews: PreviewProvider {
    static var previews: some View {
        let url = URL(string: "https://randomuser.me/api/portraits/thumb/men/75.jpg")
        AsyncImage(
            url: url,
            placeholder: { Image(systemName: "person.circle") },
            image: { Image(uiImage: $0).resizable() }
        ).aspectRatio(contentMode: .fit)
    }
}
