# ZLogger

[![CI Status](http://img.shields.io/travis/soucolline/ZLogger.svg?style=flat)](https://travis-ci.org/soucolline/ZLogger)
[![Version](https://img.shields.io/cocoapods/v/ZLogger.svg?style=flat)](http://cocoapods.org/pods/ZLogger)
[![License](https://img.shields.io/cocoapods/l/ZLogger.svg?style=flat)](http://cocoapods.org/pods/ZLogger)
[![Platform](https://img.shields.io/cocoapods/p/ZLogger.svg?style=flat)](http://cocoapods.org/pods/ZLogger)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

ZLogger is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZLogger'
```

## How to use

To print a message simply use `ZLogger.log(message: String, event: LogEvent)`<br>
ZLogger comes with 3 levels of log severity of type LogEvent : .info, .warning, .error

By default ZLogger will display every message but you can filter them using `ZLogger.filter` method which requires a LogEvent<br>
`LogEvent.info` will display every message<br>
`LogEvent.warning` will display .error and .warning<br>
`LogEvent.error` will only display .error<br>

## Author

Zlatan, guilleminot.thomas@gmail.com

## License

ZLogger is available under the MIT license. See the LICENSE file for more info.
