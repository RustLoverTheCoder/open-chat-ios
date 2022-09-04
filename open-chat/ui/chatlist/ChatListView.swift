//
//  ChatListView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/27.
//

import SwiftUI

struct ChatListView: View {
    var body: some View {
        NavigationView{
            VStack() {
                HStack {
                    Text("Edit")
                        .font(.callout);
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.padding(.horizontal)
                ScrollView {
                    LazyVStack(spacing:0){
                        ForEach(1...100, id: \.self) { chat in
                            NavigationLink(destination: ChatView()) {
                                ChatRowView();
                            }
                         }
                    }
                }
                .background(Color("primaryColor"))
            }.navigationBarHidden(true).background(Color("secondaryColor"))
        }
         
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
            ChatListView()
    }
}
