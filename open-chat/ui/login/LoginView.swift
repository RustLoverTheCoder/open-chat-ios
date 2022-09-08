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

//    init() {
//        UITableView.appearance().backgroundColor = UIColor(named: "primaryColor")
//    }

    var body: some View {
        VStack {
            Text("Welcome!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("headerPrimary"))
                    .padding(.vertical, 100.0)
            HStack {
                TextField("Phone", text: $value)
                        .padding()
                        .background(Color("tertiaryColor"))
                        .cornerRadius(3.0)
            }
                    .padding([.leading, .bottom, .trailing], 16.0)
            HStack {
                TextField("code", text: $value)
                        .padding()
                        .background(Color("tertiaryColor"))
                        .cornerRadius(3.0)
            }
                    .padding([.leading, .bottom, .trailing], 16.0)
            HStack {
                Button(action: {
                    RootVM.userFlow = .home
                }, label: {
                    HStack {
                        Spacer()
                        Text("LOGIN")
                            .font(.headline)
                                .foregroundColor(.white)
                                .frame(height: 52.0)
                        Spacer()
                    }
                            .background(Color("brand"))

                })
            }
                    .padding(.horizontal, 16.0)
            Spacer()
        }
                .background(Color("primaryColor"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
