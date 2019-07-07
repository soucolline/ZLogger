//
//  ViewController.swift
//  Example
//
//  Created by Thomas Guilleminot on 7 Jul 2019.
//  Copyright © 2019 Thomas Guilleminot. All rights reserved.
//

import UIKit
import ZLogger

// MARK: - ViewController

/// The ViewController
class ViewController: UIViewController {
  
  // MARK: Properties
  
  /// The Label
  lazy var label: UILabel = {
    let label = UILabel()
    label.text = "🚀\nZLogger\nExample"
    label.font = .systemFont(ofSize: 25, weight: .semibold)
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    label.textAlignment = .center
    return label
  }()
  
  // MARK: View-Lifecycle
  
  /// View did load
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    
    ZLogger.log(message: "I am an info log", event: .info)
    ZLogger.info(message: "I am an info log")
    
    ZLogger.log(message: "I am a warning log", event: .warning)
    ZLogger.warning(message: "I am a warning log")
    
    ZLogger.log(message: "I am an error log", event: .error)
    ZLogger.error(message: "I am an error log")
  }
  
  /// LoadView
  override func loadView() {
    self.view = self.label
  }
  
}
