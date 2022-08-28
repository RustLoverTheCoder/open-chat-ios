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
                Text("sort")
                Spacer()
                Text("contacts")
                Spacer()
                Image(systemName: "plus")
            }.padding(.horizontal)
            Divider()
            ScrollView {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
