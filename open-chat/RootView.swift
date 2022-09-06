//
//  RootView.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/6.
//

import SwiftUI

struct RootView: View {
    var userFlow = UserFlow.login
    init(){
        userFlow = UserFlow.home
    }
    var body: some View {
        Group {
            switch userFlow {
            case .login:
                LoginView()
            case .home:
                ContentView()
            }
        }.edgesIgnoringSafeArea(.bottom)
            .transition(.opacity)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

enum UserFlow {
    case login
    case home
}
