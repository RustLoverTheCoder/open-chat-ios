//
//  EditorView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/30.
//

import SwiftUI

struct EditorView: View {
    @State private var text: String = ""
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            ZStack {
                VStack {
                        HStack(spacing: 12) {
                        Image(systemName: "speaker.wave.3.fill")
                            ZStack(alignment: .leading){
                                if(text.isEmpty){
                                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                                    .font(.custom("Helvetica", size: 24))
                                    .padding(.all)
                                }
                                TextEditor(text: $text)
                                        .frame(height: 40)
                                        .background(Color("chat_send_text_background"))
                                        .cornerRadius(4)
                            }
                                Image(systemName: "face.smiling")
                                Image(systemName: "plus.circle")
                        }
                        .frame(height: 56)
                        .padding(.horizontal, 12)
                        Spacer()
                            }
                        }
                        .frame(height:56)
                    }
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView()
    }
}
