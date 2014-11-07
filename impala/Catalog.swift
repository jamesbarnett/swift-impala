//
//  Catalog.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import Foundation

class Catalog {
  var designer = ""
  var collections: [Collection] = []
  
  init(designer: String) {
    self.designer = designer
  }
  
  init(designer: String, collections: [Collection]) {
    self.designer = designer
    self.collections = collections
  }
}
