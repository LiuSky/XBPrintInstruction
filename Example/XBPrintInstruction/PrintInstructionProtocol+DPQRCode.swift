//
//  PrintInstructionProtocol+DPQRCode.swift
//  XBPrintInstruction_Example
//
//  Created by xiaobin liu on 2018/11/22.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import XBPrintInstruction


// MARK: - 达普打印机的QRCode打印
extension PrintInstructionProtocol {
    
    /*
     ⚠️: 因为二维码是近些年才有的打印，所以很多厂商有自己的定义协议。。。日了🐶了
     这里进行扩展是我认为,不太可能有一个app支持N种打印，因为真的很多
     当然你要支持的话,你可以写一个几个打印机类型的结构体,然后来进行协议扩展指定只能这类打印机用
     */
    
    
    /**
     打印二维码
     - parameter qrcode:   二维码数据
     - returns:            Data
     */
    func printer(qrcode: String) -> Data {
        let  nLength = qrcode.count + 0
        
        var cmmData = Data()
        cmmData.appendByte(29)
        cmmData.appendByte(119)
        cmmData.appendByte(11)//二维码大小设置
        
        cmmData.appendByte(29)
        cmmData.appendByte(107)
        cmmData.appendByte(97)
        cmmData.appendByte(8)
        cmmData.appendByte(1)
        cmmData.appendByte(UInt8(nLength))//二维码大小
        let printData = qrcode.data(using: String.Encoding.utf8)
        cmmData.append(printData!)
        return cmmData
    }
}
