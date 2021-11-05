//
//  HelloWorld.swift
//  MixedExampe
//
//  Created by Rake Yang on 2021/11/4.
//

import Foundation
import PureOCLib
import PureSwiftLib
import MixedLib
import CocoaLumberjack

@objc class HelloWorld: NSObject {
    
    @objc func hello() {
        //项目中使用OC
        Outdate.warning()
        
        DDLogInfo("Hello, Swift!")
        
        PureOCLibVersion.ver()
        
        PureSwiftVersion.ver()
        
        MixedOCVersion.ver()
        
        MixedSwiftVersion.ver()
    }
}
