//
//  MessageListView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/30.
//

import SwiftUI

struct MessageListView: View {
    var entries: [Entry] = Array(repeating: Entry(), count: 200)
    var body: some View {
        ScrollView {
            ScrollViewReader{ value in
                ForEach(entries, id: \.id) { entry in
                    MessageView()
                }
            }
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView().background(Color("primaryColor"))
    }
}

struct Entry {
    let id = UUID()

    func getName() -> String {
        return "Entry with id \(id.uuidString)"
    }
}
