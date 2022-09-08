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
        VStack(spacing: 0){
            HStack {
                Button(action: {
                    RootVM.userFlow = .home
                }, label: {
                    Image(systemName: "chevron.left").foregroundColor(Color("headerPrimary"))
                })
                Spacer()
            }.padding(.horizontal)
            Divider()
            MessageListView().background(Color("primaryColor"))
            EditorView()
        }.background(Color("secondaryColor"))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()  .edgesIgnoringSafeArea(.bottom)
    }
}
