//
//  ContentView.swift
//  open-chat
//
//  Created by 马翔 on 2022/8/27.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 2
    init(){
        UITabBar.appearance().backgroundColor = UIColor(named:"tertiaryColor")
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "tabbarUnselectedColor")
    }
    var body: some View {
            TabView(selection: .constant(selection)) {
                ContactsView().tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("好友") }.tag(1)
                ChatListView().tabItem {
                    Image(systemName: "ellipsis.bubble.fill")
                    Text("聊天") }.tag(2)
                AccountView().tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("设置") }.tag(3)
            }
            .accentColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
