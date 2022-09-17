//
//  EditorView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/30.
//

import SwiftUI

struct EditorView: View {
    @State private var text: String = ""
    init(){
        UITextView.appearance().backgroundColor = UIColor(named:"secondaryColor")
    }
    var body: some View {
        VStack(spacing: 0) {
                HStack(alignment: .center, spacing: 12) {
                    AsyncImage(url: URL(string: "https://www.com8.cn/wp-content/uploads/2020/11/20201108023309-5fa758e5be02a.jpg")) { image in
                        image
                                .resizable()
                                .aspectRatio(contentMode: .fill)

                    } placeholder: {
                        Color.gray
                    }
                            .frame(width: 32, height: 32).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    TextField("消息@PUPU", text: $text)
                        .foregroundColor(Color("headerPrimary"))
                        .accentColor(Color("headerPrimary"))
                    Image(systemName: "face.smiling").foregroundColor(Color("headerPrimary"))
                            Image(systemName: "plus.circle").foregroundColor(Color("headerPrimary"))
                    }
                    .padding(.horizontal, 12)
            }.frame( height: 56, alignment: .center)
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView().background(Color("tertiaryColor"))
    }
}
