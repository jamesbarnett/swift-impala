//
//  Piece.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import Foundation

class Piece {
  var title = ""
  var description = ""
  var image = ""
  
  init() {
    
  }
  
  init(title: String, description: String, image: String) {
    self.title = title
    self.description = description
    self.image = image
  }
}