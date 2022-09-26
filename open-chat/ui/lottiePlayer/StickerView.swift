//
// Created by 马翔 on 2022/9/26.
//

import Foundation
import SwiftUI
import SDWebImageLottieCoder

struct StickerView: UIViewRepresentable {
    let lottieURL: URL
    let imageView: SDAnimatedImageView = SDAnimatedImageView()
    let pixelSize = CGSize(width: .tgStickerWidth, height: .tgStickerWidth)
    func makeUIView(context: Context) -> some UIView {
//        imageView.sd_setImage(with: lottieURL)
        imageView.sd_setImage(with: lottieURL, placeholderImage: nil, options: [],context: [SDWebImageContextOption.imageThumbnailPixelSize : pixelSize])
        return imageView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
