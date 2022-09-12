//
//  AccountView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/27.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 12){
                AsyncImage(url: URL(string: "https://www.com8.cn/wp-content/uploads/2020/11/20201108023309-5fa758e5be02a.jpg")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                } placeholder: {
                    Color.gray
                }.frame(width: 80.0, height: 80.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                Group {
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                    AccountRowView()
                }
            }
        }.background(Color("secondaryColor"))
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
