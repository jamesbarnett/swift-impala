//
//  DetailViewController.swift
//  impala
//
//  Created by James Barnett on 10/31/14.
//  Copyright (c) 2014 vivid-abstraction. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIGestureRecognizerDelegate {
  @IBOutlet weak var pageControl: UIPageControl!
  @IBOutlet weak var imageView: UIImageView!
  var images: [UIImage] = []
  
  var detailItem: Collection? {
    didSet {
      self.configureView()
    }
  }

  func configureView() {
    var collectionView = self.view as CollectionView
    pageControl = collectionView.pageControl
    pageControl.currentPage = 0
    imageView = collectionView.imageView
    
    if let collection = self.detailItem {
      pageControl.numberOfPages = collection.pieces.count
      
      for piece in collection.pieces {
        println("Image named: \(piece.image)")
        images.append(UIImage(named: piece.image)!)
      }
    }
  
    configureGestures()
    updateDetailUI()
  }

  func updateDetailUI() {
    if let collection = self.detailItem {
      if let label = (self.view as CollectionView).detailDescriptionLabel {
        label.text = collection.pieces[pageControl.currentPage].title
        imageView.image = images[pageControl.currentPage]
      }
    }
  }
  
  func configureGestures() {
    var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
    swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
    
    var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
    swipeRight.direction = UISwipeGestureRecognizerDirection.Right
    
    view.addGestureRecognizer(swipeLeft)
    view.addGestureRecognizer(swipeRight)
  }
  
  func respondToSwipeGesture(gesture: UIGestureRecognizer) {
    if let swipeGesture = gesture as? UISwipeGestureRecognizer {
      switch swipeGesture.direction {
      case UISwipeGestureRecognizerDirection.Left:
        swipeLeft()
      case UISwipeGestureRecognizerDirection.Right:
        swipeRight()
      default:
        break
      }
    }
  }
  
  func swipeLeft() {
    println("Swipe left!")
    if pageControl.currentPage < detailItem!.pieces.count - 1 {
      pageControl.currentPage = pageControl.currentPage + 1
      updateDetailUI()
    }
  }
  
  func swipeRight() {
    println("Swipe right!")
    if pageControl.currentPage > 0 {
      pageControl.currentPage = pageControl.currentPage - 1
      updateDetailUI()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.configureView()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

