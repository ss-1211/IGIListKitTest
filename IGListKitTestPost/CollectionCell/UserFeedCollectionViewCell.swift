//
//  UserFeedCollectionViewCell.swift
//  IGListKitTestPost
//
//  Created by 佐々木駿 on 2019/08/22.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit

class UserFeedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userContent: UITextView!
    @IBOutlet weak var postImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.userIcon.layer.cornerRadius = 15
        self.userIcon.clipsToBounds = true
    }
    
    //UI部品のValueを設定する(画像なし)
    func noSetUpImage(userIcon: UIImage, userName: String, userContent: String) {
        self.userIcon.image = userIcon
        self.userName.text = userName
        self.userContent.text = userContent
    }
    //UI部品のValue設定(画像あり)
    func SetUpImage(userIcon: UIImage, userName: String, userContent: String, postImage: UIImage) {
        let resizedImage: UIImage = postImage
        let rect:CGRect = CGRect(x:0, y:0, width:200, height:300)
        self.userIcon.image = userIcon
        self.userName.text = userName
        self.userContent.text = userContent
        self.postImage.image = postImage
        self.postImage.frame = rect
     
    }
    

}
