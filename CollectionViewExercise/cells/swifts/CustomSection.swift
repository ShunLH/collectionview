//
//  CustomSection.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 8/31/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class CustomSection: UICollectionReusableView {

	@IBOutlet weak var labelCat: UILabel!
	
	var mData : String! {
		didSet {
			labelCat.text = mData
		}
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
