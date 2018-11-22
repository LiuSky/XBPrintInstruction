# XBPrintInstruction

[![CI Status](https://img.shields.io/travis/LiuSky/XBPrintInstruction.svg?style=flat)](https://travis-ci.org/LiuSky/XBPrintInstruction)
[![Version](https://img.shields.io/cocoapods/v/XBPrintInstruction.svg?style=flat)](https://cocoapods.org/pods/XBPrintInstruction)
[![License](https://img.shields.io/cocoapods/l/XBPrintInstruction.svg?style=flat)](https://cocoapods.org/pods/XBPrintInstruction)
[![Platform](https://img.shields.io/cocoapods/p/XBPrintInstruction.svg?style=flat)](https://cocoapods.org/pods/XBPrintInstruction)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

XBPrintInstruction is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XBPrintInstruction'
```

## Usage
```swift
1.BluetoothManagerCode: 

var bluetoothManager = XBBluetoothManager() //初始化
bluetoothManager.delegate = self  //设置代理 
bluetoothManager.startScan() //搜索附近的蓝牙设备  
bluetoothManager.connectPeripheral(peripheral) //连接蓝牙设备 


2. ESC-POS Instruction: 

//初始化打印机
var printerInitialize: NSData! {
get { 
let cmmData = NSMutableData.init() 
cmmData.appendByte(27) 
cmmData.appendByte(64) 
return cmmData   } 
} 


3. 发送打印指令: 
let cfEnc = CFStringEncodings.GB_18030_2000 
let enc = CFStringConvertEncodingToNSStringEncoding(CFStringEncoding(cfEnc.rawValue)) 

//打印商家名称 
let cmmStoreNameData = NSMutableData.init() 
cmmStoreNameData.appendData(printerInitialize) 
cmmStoreNameData.appendData(printerModel(0)) 
cmmStoreNameData.appendData(printerCharacterSize(1)) 
cmmStoreNameData.appendData(printerAlignment(1)) 
let storeNameData = printTemplate.storeName.dataUsingEncoding(enc) 
cmmStoreNameData.appendData(storeNameData!) 
cmmStoreNameData.appendData(printerPaperFeed(2)) 
bluetoothManager.writeValue(peripheral, data: cmmStoreNameData) 
```

## License

XBPrintInstruction is available under the MIT license. See the LICENSE file for more info.
