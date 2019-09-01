//
//  Extensions.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 8/31/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import Foundation
import UIKit
import Rabbit_Swift

extension UICollectionView {
	func registerForCell(strID : String){
		register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
	}
}

extension String {
	func toMMFont() -> String {
		if UserDefaults.standard.bool(forKey: DEF_IS_UNICODE){
			return self
		}else {
			return Rabbit.uni2zg(unicode: self)
		}
	}
}
