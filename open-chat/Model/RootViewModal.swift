//
//  RootViewModal.swift
//  open-chat
//
//  Created by 马翔 on 2022/9/7.
//

import Foundation

class RootViewModal:ObservableObject {
    enum UserFlow {
        case login
        case home
        case chat
    }
    
    @Published var userFlow = UserFlow.home
    
    
}


