//
//  UserPostSectionController.swift
//  IGListKitTestPost
//
//  Created by 佐々木駿 on 2019/08/22.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit
import IGListKit

final class UserPostSectionController: ListSectionController {
    
    var feed: User?
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 300)
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let feed = feed else {
            fatalError("feed is nil.")
        }
        if feed.isImageExist(){
            let cell = collectionContext?.dequeueReusableCell(withNibName: "UserFeedCollectionViewCell", bundle: nil, for: self, at: index) as! UserFeedCollectionViewCell
            //        let cell = collectionContext?.dequeueReusableCell(withNibName: "FeedCell", bundle: nil, for: self, at: index) as! FeedCell
            cell.noSetUpImage(userIcon: feed.icon, userName: feed.userName, userContent: feed.content)
            return cell
        }else{
            let cell = collectionContext?.dequeueReusableCell(withNibName: "UserFeedCollectionViewCell", bundle: nil, for: self, at: index) as! UserFeedCollectionViewCell
            //        let cell = collectionContext?.dequeueReusableCell(withNibName: "FeedCell", bundle: nil, for: self, at: index) as! FeedCell
            cell.noSetUpImage(userIcon: feed.icon, userName: feed.userName, userContent: feed.content)
            return cell
        }
        
    }
    override func didUpdate(to object: Any) {
        self.feed = object as? User
    }
    
    override func didSelectItem(at index: Int) {}

}
