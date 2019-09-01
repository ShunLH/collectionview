//
//  MovieVo.swift
//  CollectionViewExercise
//
//  Created by AcePlus Admin on 8/31/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import Foundation


import Foundation
class MovieVO {
	var movieName:String = ""
	var movieCover:String = ""
	
	init(name:String,img:String) {
		
		self.movieName = name
		self.movieCover = img
	}
}

extension MovieVO {
	//ea443b
	static func getAllMovies() -> [MovieVO] {
		
		return [
			.init(name: "အထက်တန်းစား", img: "https://assets.mm-cinema.com/movies/Ahtettansar%20PP.jpg"),
			.init(name: "ဂျင်ပါတီ", img: "https://assets.mm-cinema.com/movies/Jin%20Party%20PP.jpg"),
			.init(name: "Dora and the Lost City of Gold", img: "https://assets.mm-cinema.com/movies/Dora%20PP.jpg"),
			.init(name: "Scary Stories to Tell in the Dark", img: "https://assets.mm-cinema.com/movies/Scary%20Stories%20to%20tell%20PP.jpg"),
			.init(name: "Ma", img: "https://assets.mm-cinema.com/movies/MA%20PP.jpg")
		]
	}
}
