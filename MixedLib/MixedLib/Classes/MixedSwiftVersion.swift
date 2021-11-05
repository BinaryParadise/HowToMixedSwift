//
//  MixedSwiftVersion.swift
//  MixedLib
//
//  Created by Rake Yang on 2021/11/4.
//

import Foundation
import CocoaLumberjack

@objc public class MixedSwiftVersion: NSObject {
    @objc public class func ver() -> Void {
        MixedOCVersion.ver()
        DDLogDebug("0.1.0 （swift in Mixed Lib）")
    }
}
