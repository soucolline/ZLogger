//
//  ViewController.swift
//  ZLogger
//
//  Created by soucolline on 11/05/2017.
//  Copyright (c) 2017 soucolline. All rights reserved.
//

import UIKit
import ZLogger

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    ZLogger.log(message: "I am an info log", event: .info)
    ZLogger.info(message: "I am an info log")
    
    ZLogger.log(message: "I am a warning log", event: .warning)
    ZLogger.warning(message: "I am a warning log")
    
    ZLogger.log(message: "I am an error log", event: .error)
    ZLogger.error(message: "I am an error log")
  }
  
}

