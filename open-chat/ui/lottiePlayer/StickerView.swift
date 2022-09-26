//
// Created by 马翔 on 2022/9/26.
//

import Foundation
import SwiftUI
import SDWebImageLottieCoder

struct StickerView: UIViewRepresentable {
    let lottieURL: URL
    let imageView: UIImageView = UIImageView()
    func makeUIView(context: Context) -> some UIView {
        imageView.sd_setImage(with: lottieURL)
        return imageView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}