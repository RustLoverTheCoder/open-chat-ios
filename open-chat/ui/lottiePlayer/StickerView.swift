//
// Created by 马翔 on 2022/9/26.
//

import Foundation
import SwiftUI
import SDWebImageLottieCoder

struct StickerView: UIViewRepresentable {
    let lottieURL: URL
    let imageView: SDAnimatedImageView = SDAnimatedImageView.init()

//    let pixelSize = CGSize(width: 10000, height: 10000)

    func makeUIView(context: Context) -> some UIView {
        imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
//        imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
//        imageView.sd_setImage(with: lottieURL)
//    SDWebImageContextOption.imageThumbnailPixelSize : pixelSize
        imageView.sd_setImage(with: lottieURL, placeholderImage: nil, options: [], context: nil)
        return imageView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
