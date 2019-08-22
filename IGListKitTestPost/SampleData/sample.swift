//
//  sample.swift
//  IGListKitTestPost
//
//  Created by 佐々木駿 on 2019/08/22.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit

class SampleData {
    class func initializer() -> [Any] {
        return[
        User(id: "1", icon: UIImage(named: "user")!, userName: "Shun", content: "ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ", postImage:nil, imageExist: .N),
        User(id: "2", icon: UIImage(named: "user")!, userName: "takuya", content: "いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい", postImage:nil, imageExist: .N)
        ] as [Any]
    }
}
