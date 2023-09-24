//
//  RemoteImage.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 14/09/2023.
//

import SwiftUI

final class ImageLoader : ObservableObject {
    
    @Published var image : Image? = nil
    
    func load(fromURLString urlString : String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage else {return}
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

//MARK: - Helper
struct RemoteImage : View {
    var image : Image?
    
    var body: some View {
        image?.resizable() ?? Image("steak").resizable()
    }
}

struct AppetizerRemoteImage : View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString : String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear { imageLoader.load(fromURLString: urlString) }
    }
    
}
