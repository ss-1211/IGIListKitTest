//
//  ViewController.swift
//  IGListKitTestPost
//
//  Created by 佐々木駿 on 2019/08/21.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController, ListAdapterDataSource,UICollectionViewDelegateFlowLayout  {
    //IGListAdapterの設定
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    
    //collectionviewの設定
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    //Sampleデータ作成
    var data = SampleData.initializer()
    
    //ListAdapterDataSourceのデリゲート
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return data as! [ListDiffable]
    }
    //ListAdapterDataSourceのデリゲート
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return UserPostSectionController()
    }
    //ListAdapterDataSourceのデリゲート
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }


}

