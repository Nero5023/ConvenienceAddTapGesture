//
//  UIViewExtension.swift
//  ViewTapBlock
//
//  Created by Nero Zuo on 15/9/16.
//  Copyright (c) 2015年 Nero. All rights reserved.
//

import UIKit
typealias TapBlockType = [UIView: (UITapGestureRecognizer -> ())]
var tapBlockDic = TapBlockType()

extension UIView {
//  var tapClosure: (UITapGestureRecognizer -> ())
  
  func addTappGestureWithActionBlock(gestureAction:(UITapGestureRecognizer -> ())) {
    let tapGesture = UITapGestureRecognizer(target: self, action: Selector("performBlock:"))
    tapBlockDic[self] = gestureAction
    self.userInteractionEnabled = true
    self.addGestureRecognizer(tapGesture)
  }
  
  func performBlock(tap: UITapGestureRecognizer) {
    if let tapView = tap.view {
      if let block = tapBlockDic[tapView] {
        block(tap)
      }

    }
  }
  
}
