//
//  DamnLayout.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 9/1/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class DamnLayout: UICollectionViewLayout {
	//Step-2 - Define layout attributes
	
	var layoutAttributes = [UICollectionViewLayoutAttributes]()
	var itemWidth : CGFloat = 200
	var itemHeight : CGFloat = 350
	var xPosition : CGFloat = 0
	var yPosition : CGFloat = 0
	var topInset  : CGFloat = 10
	var leftInset  : CGFloat = 10
	var rightInset  : CGFloat = 10
	var bottomInset  : CGFloat = 10
	
	var contentSize : CGSize = CGSize(width: 0, height: 0)
	//Step-1
	
	override func prepare() {
		super.prepare()
		guard let collectionView = collectionView else {
			print("collection view is nil")
			return
		}
		// Step - 3 - calculate layout attributes
		
		//Mark - : layout attr for first item
//		let firstItemIndex = IndexPath(row: 0, section: 0)
//		let attr = UICollectionViewLayoutAttributes(forCellWith: firstItemIndex)
//		attr.frame = CGRect(x: 0, y: 0, width: itemWidth, height: itemHeight)
////		attr.size = CGSize(width: itemWidth, height: itemHeight)
//		layoutAttributes.append(attr)
//
//		let secondItemIndex = IndexPath(row: 1, section: 0)
//		let attr2 = UICollectionViewLayoutAttributes(forCellWith: secondItemIndex)
//		attr2.frame = CGRect(x: 200, y: 0, width: itemHeight, height: itemHeight)
//
//
//		layoutAttributes.append(attr2)
//
//		contentSize.height =  2 * itemHeight
		contentSize = collectionView.frame.size
		contentSize.width = collectionView.frame.width - leftInset - rightInset
		collectionView.contentInset = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)


		let itemCount = collectionView.numberOfItems(inSection: 0)
		let itemWidth = ((collectionView.frame.size.width-20) / 2)
		var xPosition : (left:CGFloat,right:CGFloat) = (0,0)
		xPosition.right = xPosition.right + itemWidth
		var yPosition : CGFloat = 0
		
		for count in 0..<itemCount{
			let itemRow = count
			let index = IndexPath(row: itemRow, section: 0)
			let layoutAttribute = UICollectionViewLayoutAttributes(forCellWith: index)
			if count%2 == 0 {

				layoutAttribute.frame = CGRect(x: xPosition.left, y: yPosition, width: itemWidth, height: itemHeight)

			}else {
				layoutAttribute.frame = CGRect(x: xPosition.right, y: yPosition, width: itemWidth, height: itemHeight)
				yPosition = yPosition + itemHeight
				contentSize.height += yPosition


			}
			layoutAttributes.append(layoutAttribute)

		}
		
	}
	
	override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		return layoutAttributes
	}
	
	override var collectionViewContentSize: CGSize {
		return contentSize
	}

}
