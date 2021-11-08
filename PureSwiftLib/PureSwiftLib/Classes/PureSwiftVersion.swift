//
//  HelloWorld.swift
//  PureSwiftLib
//
//  Created by Rake Yang on 2021/11/4.
//

let indexTable = [
    "A","B","C","D","E","F","G","H","I","J","K","L","M","N",
    "O","P","Q","R","S","T","U","V","W","X","Y","Z",
    "a","b","c","d","e","f","g","h","i","j","k","l","m","n",
    "o","p","q","r","s","t","u","v","w","x","y","z",
    "0","1","2","3","4","5","6","7","8","9",
    "+","/",
    ]

@objc public class PureSwiftVersion: NSObject {
    @objc public class func ver(_ tip: String) -> Void {
        print(tip)
    }
    
    @objc public class func base64test() -> Void {
        let str = "天朝第一a"
        var bytes = [UInt8](str.data(using: .utf8)!)
        var padding: String = ""
        if str.lengthOfBytes(using: .utf8) % 3 > 0 {
            bytes += [UInt8](repeating: 0, count: 3 - str.lengthOfBytes(using: .utf8)%3)
            padding = str.lengthOfBytes(using: .utf8)%3 == 1 ? "==" : "="
        }
        var base64: String = ""
        for i in stride(from: 0, to: bytes.count, by: 3) {
            let num = Array(bytes[i..<i+3]).intValue
            base64.append(indexTable[num >> 18])
            base64.append(indexTable[(num & 0x3F000) >> 12])
            base64.append(indexTable[(num & 0xFC0) >> 6])
            base64.append(indexTable[num & 0x3F])
        }
        base64.removeLast(padding.count)
        base64 += padding
        assert(base64 == "5aSp5pyd56ys5LiAYQ==")
        
        let lstr = "Base64（基底64）是一种基于64个可打印字符来表示二进制数据的表示方法。由于log2^64=6，所以每6个比特为一个单元，对应某个可打印字符。3个字节相当于24个比特，对应于4个Base64单元，即3个字节可由4个可打印字符来表示。在Base64中的可打印字符包括字母A-Z、a-z、数字0-9，这样共有62个字符，此外两个可打印符号在不同的系统中而不同。一些如uuencode的其他编码方法，和之后BinHex的版本使用不同的64字符集来代表6个二进制数字，但是不被称为Base64。"
        //换行规则
        let l1 = lstr.data(using: .utf8)!.base64EncodedString(options: .lineLength64Characters)
        let l2 = lstr.data(using: .utf8)!.base64EncodedString(options: .endLineWithCarriageReturn)
        print("line64: \(l1)")
        print("line76: \(l2)")
    }
}

extension Array where Element == UInt8 {
    public var intValue: Int {
        var r: Int = 0
        for (i, item) in reversed().enumerated() {
            r += Int(item) << (i * 8)
        }
        return r
    }
    
    public func toHexString() -> String {
        `lazy`.reduce(into: "") {
            var s = String($1, radix: 16).uppercased()
            if s.count == 1 {
                s = "0" + s
            }
            $0 += "\(s)"
        }
    }
}
