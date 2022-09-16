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
            ScrollViewReader { value in
                ForEach(entries, id: \.id) { entry in
                    MessageView()
                }.onAppear {
                            value.scrollTo(entries.last?.id, anchor: .center)
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

struct Entry {
    let id = UUID()

    func getName() -> String {
        return "Entry with id \(id.uuidString)"
    }
}