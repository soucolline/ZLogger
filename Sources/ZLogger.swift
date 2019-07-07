//
//  ZLogger.swift
//  ZLogger
//
//  Created by Zlatan on 12/10/2017.
//  Copyright © 2017 Thomas Guilleminot. All rights reserved.
//

import Foundation

public final class ZLogger {
  
  static public var filter: LogEvent? {
    get {
      return ZLogger.severity.first // Not for use but required to compile
    }
    
    set(newValue) {
      if let newValue = newValue {
        ZLogger.severity = newValue.severity
      }
    }
  }
  static private var severity: [LogEvent] = LogEvent.info.severity
  
  static private let dateFormat = "yyyy-MM-dd hh:mm:ssSSS"
  
  static var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = dateFormat
    formatter.locale = Locale.current
    formatter.timeZone = TimeZone.current
    return formatter
  }
  
  private class func sourceFileName(filePath: String) -> String {
    let components = filePath.components(separatedBy: "/")
    return components.isEmpty ? "" : (components.last ?? "")
  }
  
  static public func info(message: String,
                          fileName: String = #file,
                          line: Int = #line,
                          column: Int = #column,
                          funcName: String = #function) {
    self.log(message: message, event: .info, fileName: fileName, line: line, column: column, funcName: funcName)
  }
  
  static public func warning(message: String,
                             fileName: String = #file,
                             line: Int = #line,
                             column: Int = #column,
                             funcName: String = #function) {
    self.log(message: message, event: .warning, fileName: fileName, line: line, column: column, funcName: funcName)
  }
  
  static public func error(message: String,
                           fileName: String = #file,
                           line: Int = #line,
                           column: Int = #column,
                           funcName: String = #function) {
    self.log(message: message, event: .error, fileName: fileName, line: line, column: column, funcName: funcName)
  }
  
  static public func log(message: String,
                         event: LogEvent,
                         fileName: String = #file,
                         line: Int = #line,
                         column: Int = #column,
                         funcName: String = #function) {
    
    #if DEBUG
    if ZLogger.severity.contains(event) {
      print("\(ZLogger.dateFormatter.string(from: Date())) \(event.rawValue)[\(sourceFileName(filePath: fileName))]:\(line) \(column) \(funcName) -> \(message)")
    }
    #endif
  }
  
}
