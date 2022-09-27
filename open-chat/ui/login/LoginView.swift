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
    @State private var value2 = ""
    @ObservedObject var viewModel: LottieViewModel = .init()
//    init() {
//        UITableView.appearance().backgroundColor = UIColor(named: "primaryColor")
//    }

    var body: some View {
        VStack {
            VStack(spacing: 8.0) {
                Text("欢迎回来!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("headerPrimary"))
                Text("很高兴再见到您!")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("headerSecondary"))

            }
                    .padding(.vertical, 50.0)
//            LottieView(lottieFile: "loading").frame(width: 120, height: 120).background(.blue).cornerRadius(120.0)
//            RlottiePlayer(player: TGSPlayer)
//            LottiePlayer()
            HStack {
                Image(uiImage: viewModel.image)
                        .resizable()
                        .scaledToFit()
                        .onAppear {
                            self.viewModel.loadAnimation(url: URL(string: "https://assets2.lottiefiles.com/packages/lf20_pghdouhq.json")!)
                        }
            }
                    .frame(width: 176, height: 176)

            VStack(alignment: .leading, spacing: 8.0) {
                Text("电话号码")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(Color("headerSecondary"))
                TextField("", text: $value)
                        .padding()
                        .background(Color("tertiaryColor"))
                        .cornerRadius(4.0)
                        .foregroundColor(Color("headerPrimary"))

            }
                    .padding(.horizontal, 16.0)
                    .padding(.bottom, 20.0)
            VStack(alignment: .leading, spacing: 8.0) {
                Text("验证码")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(Color("headerSecondary"))
                TextField("", text: $value2)
                        .padding()
                        .background(Color("tertiaryColor"))
                        .cornerRadius(4.0)
                        .foregroundColor(Color("headerPrimary"))
            }
                    .padding(.horizontal, 16.0)
                    .padding(.bottom, 20.0)
            HStack {
                Button(action: {
                    RootVM.userFlow = .home
                }, label: {
                    HStack {
                        Spacer()
                        Text("登录")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(height: 52.0)
                        Spacer()
                    }
                            .background(Color("brand"))
                            .cornerRadius(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)

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
