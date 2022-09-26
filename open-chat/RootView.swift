//
//  RootView.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/6.
//

import SwiftUI
import SDWebImageLottieCoder

struct RootView: View {
    @StateObject var RootVM = RootViewModal()
    
    init() {
        let lottieCoder = SDImageLottieCoder.shared
        SDImageCodersManager.shared.addCoder(lottieCoder)
    }
    
    
    var body: some View {
        Group {
            switch RootVM.userFlow {
            case .login:
                LoginView().transition(AnyTransition.asymmetric(
                    insertion:.move(edge: .trailing),
                    removal: .move(edge: .leading)))
            case .home:
                ContentView().transition(AnyTransition.asymmetric(
                    insertion:.move(edge: .trailing),
                    removal: .move(edge: .leading)))
            case .chat:
                ChatView().transition(AnyTransition.asymmetric(
                    insertion:.move(edge: .trailing),
                    removal: .move(edge: .leading)))
            }
        }
        .transition(.opacity)
        .environmentObject(RootVM)
        .animation(.default, value:RootVM.userFlow )
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

