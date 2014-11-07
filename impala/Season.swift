//
//  Season.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import Foundation

enum Season: String {
  case Winter = "Winter"
  case Spring = "Spring"
  case Summer = "Summer"
  case Fall = "Fall"
  
  var description: String {
    switch self {
    case .Winter: return "Winter"
    case .Spring: return "Spring"
    case .Summer: return "Summer"
    case .Fall: return "Fall"
      }
  }
}