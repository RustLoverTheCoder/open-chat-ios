//
//  ChatView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/28.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var RootVM: RootViewModal

    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center) {
                Button(action: {
                    RootVM.userFlow = .home
                }, label: {
                    Image(systemName: "chevron.left").foregroundColor(Color("headerPrimary"))
                })
                Spacer()
                VStack(spacing: 2) {
                    Text("徐凤年徐凤年").font(.headline).foregroundColor(Color("headerPrimary"))
                    Text("上次登录时间 22/09/27").font(.caption).foregroundColor(Color("headerSecondary"))
                }
                Spacer()
                AsyncImage(url: URL(string: "https://www.com8.cn/wp-content/uploads/2020/11/20201108023309-5fa758e5be02a.jpg")) { image in
                    image
                            .resizable()
                            .aspectRatio(contentMode: .fill)

                } placeholder: {
                    Color.gray
                }
                        .frame(width: 32, height: 32).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
                    .padding(.horizontal).frame(height: 50.0).background(Color("tertiaryColor"))
            MessageListView().background(Color("primaryColor"))
            EditorView().background(Color("tertiaryColor"))
        }
                .background(Color("secondaryColor"))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
