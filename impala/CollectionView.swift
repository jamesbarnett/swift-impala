//
//  CollectionView.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import Foundation
import UIKit

class CollectionView : UIView {
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  @IBOutlet weak var pageControl: UIPageControl!
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var imageView: UIImageView!
  
  override init() {
    super.init()
  }
  
  required init(coder aCoder: NSCoder) {
    super.init(coder: aCoder)
  }
}