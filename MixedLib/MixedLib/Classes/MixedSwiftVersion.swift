//
//  MixedSwiftVersion.swift
//  MixedLib
//
//  Created by Rake Yang on 2021/11/4.
//

import Foundation
import CocoaLumberjack

@objc public class MixedSwiftVersion: NSObject {
    @objc public class func ver(_ tip: String) -> Void {
        DDLogError(tip)
        MixedOCVersion.ver("混编库中swift使用oc库")
    }
}
