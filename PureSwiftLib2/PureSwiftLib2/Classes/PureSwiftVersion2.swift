//
//  PureSwiftVersion2.swift
//  PureSwiftLib2
//
//  Created by Rake Yang on 2021/11/4.
//

import CocoaLumberjack
import PureOCLib2

@objc public class PureSwiftVersion2: NSObject {
    @objc public class func ver() -> Void {
        DDLogDebug("0.1.0 （Pure Swift Lib2）")
        PureOCVersion2.ver()
    }
}
