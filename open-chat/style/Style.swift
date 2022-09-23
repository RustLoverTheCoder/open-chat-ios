//
//  Style.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/23.
//


import SwiftUI


extension CGFloat {
    static let tgMessageCornerRadius: CGFloat = 14
    // static let tgMessageWidth: CGFloat = 160
    static var tgMessageWidth: CGFloat = {
        // Keeping the same ratio for all screens
        (UIScreen.main.bounds.width / 184 * 160).rounded()
    }()

    static var tgStickerWidth: CGFloat = {
        (UIScreen.main.bounds.width / 184 * 140).rounded()
    }()
}
