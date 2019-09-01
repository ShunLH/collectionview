//
//  MovieCollectionViewCell.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 8/31/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit
import SDWebImage

class MovieCollectionViewCell: UICollectionViewCell {

	@IBOutlet weak var ivMovie: UIImageView!
	@IBOutlet weak var labelMovieName: UILabel!
	var mData : MovieVO! {
		didSet {
			ivMovie.sd_setImage(with: URL(string: mData.movieCover), completed: nil)
			labelMovieName.text = mData.movieName.toMMFont()
		}
	}

	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		
    }

}
