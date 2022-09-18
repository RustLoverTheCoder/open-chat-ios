//
//  MessageView.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/16.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        ZStack(alignment:.topLeading){
            HStack {
                AsyncImage(url: URL(string: "https://www.com8.cn/wp-content/uploads/2020/11/20201108023309-5fa758e5be02a.jpg")) { image in
                    image
                            .resizable()
                            .aspectRatio(contentMode: .fill)

                } placeholder: {
                    Color.gray
                }
                .frame(width: 40, height: 40).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }.frame(width: 76.0,height: 48)
            HStack(spacing: 8.0) {
                VStack(alignment: .leading){
                    Text("Tourssliver").foregroundColor(Color("headerPrimary"))
                    Text("Hellowwwwwwwwwwwwwwwwwwwwww").foregroundColor(Color("textNormal"))
                }
                Spacer()
            }.padding(.leading,72.0)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView().background(Color("primaryColor"))
    }
}
