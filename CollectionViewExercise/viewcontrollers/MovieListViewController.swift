//
//  MovieListViewController.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 8/31/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
	
	@IBOutlet weak var collectionViewMovies: UICollectionView!
	var mMovieList : [MovieVO] = MovieVO.getAllMovies()
	let numberOfItemPerRow : CGFloat = 2
	let spacing  : CGFloat = 20
	override func viewDidLoad() {
        super.viewDidLoad()
		collectionViewMovies.delegate = self
		collectionViewMovies.dataSource = self
		
		collectionViewMovies.registerForCell(strID: String(describing: MovieCollectionViewCell.self))
		// Register View for Section Header
		collectionViewMovies.register(UINib(nibName: String(describing: CustomSection.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: CustomSection.self))

		// Mark - : Default CollectionViewFlowLayout
//		let layout = collectionViewMovies.collectionViewLayout as! UICollectionViewFlowLayout
//		let totalSpacing : CGFloat = (numberOfItemPerRow - 1) * spacing
//		let itemWidth = (self.view.frame.width - totalSpacing) / numberOfItemPerRow
//		layout.minimumLineSpacing = 0
//		layout.itemSize = CGSize(width: itemWidth, height: (itemWidth * 1.8))
		
		// Mark - : Custom Layout
		collectionViewMovies.setCollectionViewLayout(DamnLayout(), animated: true)
		
    }
}

extension MovieListViewController : UICollectionViewDataSource {
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 2
	}
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return mMovieList.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MovieCollectionViewCell.self), for: indexPath) as! MovieCollectionViewCell
		cell.mData = mMovieList[indexPath.row]
		return cell
	}
	
	
}
extension MovieListViewController : UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: CustomSection.self), for: indexPath) as! CustomSection
		let category = indexPath.section == 0 ?  "Now Showing" : "Up coming"
		sectionHeaderView.mData = category
		return sectionHeaderView
	}
	
}
