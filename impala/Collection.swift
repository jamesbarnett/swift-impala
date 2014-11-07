//
//  Collection.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import Foundation

class Collection {
  var season: Season = Season.Winter
  var year: Int?
  var description = ""
  var image = ""
  var pieces: [Piece] = []
  
  init () {
    
  }
  
  init(year: Int) {
    self.year = year
    
  }
  
  init(year: Int, season: Season) {
    self.year = year
    self.season = season
  }
  
  init(year: Int, season: Season, description: String, image: String, pieces: [Piece]) {
    self.year = year
    self.season = season
    self.description = description
    self.image = image
    self.pieces = pieces
  }
}
