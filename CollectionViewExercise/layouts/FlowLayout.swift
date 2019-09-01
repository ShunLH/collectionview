//
//  FlowLayout.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 9/1/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class FlowLayout: UICollectionViewFlowLayout {
	var itemHeight : CGFloat = 330
	let collectionViewInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)

	override func prepare() {
		super.prepare()
		guard let collectionView = collectionView else {
			print("collection view is nil")
			return
		}
		collectionView.contentInset = collectionViewInset
		itemSize = CGSize(width: ((collectionView.frame.width-50)/2), height: itemHeight)
		minimumLineSpacing = 20
	}

}
