//
//  MessageListView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/30.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing:0){
                ForEach(1...100, id: \.self) { message in
                    MessageView()
                }
            }
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}
