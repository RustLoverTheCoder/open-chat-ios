//
//  AccountRowView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/29.
//

import SwiftUI

struct AccountRowView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 12) {
                Image(systemName: "folder")
                
                Text("我的收藏")
                    .font(.system(size: 16))
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding()
        }
        .frame(height: 54)
    }
}

struct AccountRowView_Previews: PreviewProvider {
    static var previews: some View {
        AccountRowView()
    }
}
