//
//  ViewController.swift
//  ViewTapBlock
//
//  Created by Nero Zuo on 15/9/16.
//  Copyright (c) 2015年 Nero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      let tapview = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
      tapview.backgroundColor = UIColor.grayColor()
      self.view.addSubview(tapview)
      tapview.addTappGestureWithActionBlock() {
        tap in
        println("gray")
      }
      
      let tapview2 = UIView(frame: CGRect(x: 130, y: 130, width: 100, height: 100))
      tapview2.backgroundColor = UIColor.blueColor()
      self.view.addSubview(tapview2)
      tapview2.addTappGestureWithActionBlock() {
        tap in
        println("blue")
      }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

  

}

