//
//  LogEvent.swift
//  PlayerCore
//
//  Created by Zlatan on 12/10/2017.
//  Copyright © 2017 eTF1. All rights reserved.
//

import Foundation

public enum LogEvent: String {
    case error = "[‼️]"
    case warning = "[⚠️]"
    case info = "[ℹ️]"

    public var severity: [LogEvent] {
        switch self {
        case .error:
            return [.error]
        case .warning:
            return [.error, .warning]
        case .info:
            return [.error, .info, .warning]
        }
    }
}
