//
//  LoginView.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/6.
//

import SwiftUI

struct LoginView: View {
    @StateObject var RootVM = RootViewModal()
    var body: some View {
        Button("Button") {
            RootVM.toHome()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
