//
//  Feed.swift
//  IGListKitTestPost
//
//  Created by 佐々木駿 on 2019/08/21.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit
import IGListKit

//フィード内のユーザー投稿情報
public class User: NSObject, ListDiffable {
    //IGLISTDiffableのプロトコル準拠
    public func diffIdentifier() -> NSObjectProtocol {
        return id as NSObjectProtocol
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let user = object as? User {
            return id == user.id
        }
        return false
    }
    
    let id: String
    let icon: UIImage
    let userName: String
    let content: String
    let postImage: UIImage?
    let imageExist: HandleExist
    
    public init(id:String, icon: UIImage, userName: String, content: String, postImage: UIImage?, imageExist: HandleExist) {
        
        self.id = id
        self.icon = icon
        self.userName = userName
        self.content = content
        self.postImage = postImage
        self.imageExist = imageExist
    }
    public func isImageExist() -> Bool {
        return imageExist == .Y
    }
}

//フィード内のユーザー投稿画像
//public class Image: NSObject, ListDiffable {
//    public func diffIdentifier() -> NSObjectProtocol {
//        return id as NSObjectProtocol
//    }
//
//    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
//        if let image = object as? Image {
//            return id == image.id
//        }
//        return false
//    }
//
//    let id: String
//    let postImage: UIImage
//    let imageExist: HandleExist
//
//    public init(id: String, postImage: UIImage, imageExist: HandleExist) {
//        self.id = id
//        self.postImage = postImage
//        self.imageExist = imageExist
//    }
//
//    public func isImageExist() -> Bool {
//        return imageExist == .Y
//    }
//
//}


//画像の存在有無&コメントの存在有無の列挙型
public enum HandleExist {
    case Y
    case N
}
