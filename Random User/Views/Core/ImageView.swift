//
//  ImageView.swift
//  Random User
//
//  Created by Sweett, Benjamin on 2020-10-01.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var imageLoader:ImageLoader
    @State var image: UIImage = UIImage(systemName: "person.circle") ?? UIImage()

    init(url: URL?) {
        imageLoader = ImageLoader(url: url)
    }

    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
            }
    }
}

struct ImageViewPreviews: PreviewProvider {
    static var previews: some View {
        let url = URL(string: "https://randomuser.me/api/portraits/med/women/94.jpg")!
        ImageView(url: url)
    }
}
