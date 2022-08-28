//
//  ContactsView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/27.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("contacts")
                Spacer()
                Image(systemName: "person.crop.circle.fill.badge.plus")
            }.padding(.horizontal)
            ScrollView {
                LazyVStack(spacing:0){
                    ForEach(1...100, id: \.self) { chat in
                        NavigationLink(destination: ChatView()){
                            ContactsRowVIew();
                        }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                     }
                }
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
            .previewInterfaceOrientation(.portrait)
    }
}
