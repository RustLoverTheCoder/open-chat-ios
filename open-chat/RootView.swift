//
//  RootView.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/6.
//

import SwiftUI

struct RootView: View {
    @StateObject var RootVM = RootViewModal()
    var body: some View {
        Group {
            switch RootVM.userFlow {
            case .login:
                LoginView()
            case .home:
                ContentView()
            case .chat:
                ChatView()
            }
        }
                .transition(.opacity)
                .environmentObject(RootVM)
                .animation(/*@START_MENU_TOKEN@*/.easeInOut/*@END_MENU_TOKEN@*/, value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/2/*@END_MENU_TOKEN@*/)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

