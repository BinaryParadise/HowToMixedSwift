//
//  PureSwiftVersion2.swift
//  PureSwiftLib2
//
//  Created by Rake Yang on 2021/11/4.
//

import CocoaLumberjack
import PureOCLib2

@objc public class PureSwiftVersion2: NSObject {
    @objc public class func ver(_ tip: String) -> Void {
        DDLogDebug(tip)
        PureOCVersion2.ver("swift库中使用oc库")
    }
}
