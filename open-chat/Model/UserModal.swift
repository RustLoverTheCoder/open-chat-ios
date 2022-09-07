//
// Created by 马翔 on 2022/9/7.
//

import Foundation

class UserModal: ObservableObject {
    @Published var userInfo: User = User(userId: "", nickname: "", phoneNumber: "")
}

struct User {
    var userId: String
    var nickname: String
    var phoneNumber: String
}