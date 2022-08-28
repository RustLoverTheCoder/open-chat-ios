//
//  ContactsRowVIew.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/28.
//

import SwiftUI

struct ContactsRowVIew: View {
    var body: some View {
        HStack(spacing: 8.0) {
            AsyncImage(url: URL(string: "https://www.com8.cn/wp-content/uploads/2020/11/20201108023309-5fa758e5be02a.jpg")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Color.gray
            }.frame(width: 48, height: 48).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 5) {
                Text("Tourssliver")
                    .font(.system(size: 16, weight: .regular))
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                Text("在线")
                    .lineLimit(1)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(systemName: "phone.circle.fill").foregroundColor(Color.gray).font(.system(size: 24))
            Image(systemName: "bubble.left.circle.fill").foregroundColor(Color.gray).font(.system(size: 24))
        }.padding(EdgeInsets(top: 9, leading: 16, bottom: 9, trailing: 16))
    }
}

struct ContactsRowVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContactsRowVIew()
    }
}
