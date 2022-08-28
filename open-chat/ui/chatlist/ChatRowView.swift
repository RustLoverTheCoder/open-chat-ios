//
//  ChatRowView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/28.
//

import SwiftUI

struct ChatRowView: View {
    var body: some View {
        HStack(spacing: 12.0) {
            AsyncImage(url: URL(string: "https://www.com8.cn/wp-content/uploads/2020/11/20201108023309-5fa758e5be02a.jpg")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Color.gray
            }.frame(width: 54, height: 54).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 5) {
                HStack(alignment: .center) {
                    Text("Tourssliver")
                        .font(.system(size: 16, weight: .regular))
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                    Spacer()
                    Image(systemName: "checkmark")
                        .frame(width: 18.0, height: 18.0)
                }

                HStack(alignment: .center) {
                    Text("123123213123123213123123213123123213123123213123123213123123213")
                        .lineLimit(2)
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                        .frame(height: 36.0)
                    Spacer()
                    Text("11:23")
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
          
                }
            }
        }.padding(EdgeInsets(top: 9, leading: 16, bottom: 9, trailing: 16))
    }
}

struct ChatRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRowView()
    }
}
