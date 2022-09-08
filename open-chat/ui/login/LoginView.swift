//
//  LoginView.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/6.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var RootVM: RootViewModal
    @State private var value = ""

    init() {
        UITableView.appearance().backgroundColor = UIColor(named: "primaryColor")
    }

    var body: some View {
        VStack {
            Form {
                Section(header: Text("First Name")) {
                    TextField("First", text: $value).background(Color("tertiaryColor")).cornerRadius(3)
                }

                Section(header: Text("Last Name")) {
                    TextField("Last", text: $value).background(Color("tertiaryColor")).cornerRadius(3)
                }

                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    RootVM.userFlow = .home
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
