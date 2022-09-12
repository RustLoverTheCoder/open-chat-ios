//
//  EditorView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/30.
//

import SwiftUI

struct EditorView: View {
    @State private var text: String = "123"
    init(){
        UITextView.appearance().backgroundColor = UIColor(named:"secondaryColor")
    }
    var body: some View {
        VStack(spacing: 0) {
                HStack(alignment: .center, spacing: 12) {
                        Image(systemName: "speaker.wave.3.fill").foregroundColor(Color("headerPrimary"))
                        TextEditor(text: $text)
                                .frame(height: 40)
                                .cornerRadius(100)
                                .foregroundColor(Color("headerPrimary"))
                            Image(systemName: "face.smiling").foregroundColor(Color("headerPrimary"))
                            Image(systemName: "plus.circle").foregroundColor(Color("headerPrimary"))
                    }
                    .padding(.horizontal, 12)
            }.frame( height:56, alignment: .center)
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView().background(Color("tertiaryColor"))
    }
}
