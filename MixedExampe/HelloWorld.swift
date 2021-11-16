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
import Canary

@objc class HelloWorld: NSObject {
    
    @objc func hello(_ tip: String) {
        DDLogDebug(tip)
        //项目中使用OC
        Outdate.warning("项目中swift使用oc")
                
        PureOCLibVersion.ver("项目中swift使用OC库")
        
        PureSwiftVersion.ver("项目中swift使用swift库")
        
        MixedOCVersion.ver("项目中swift使用混编库oc")
        
        MixedSwiftVersion.ver("项目中swift使用混编库swift")
    }
}

@objc class CanaryTTYLogger: DDAbstractLogger {
    public override func log(message logMessage: DDLogMessage) {
        CanaryManager.shared.storeLogMessage(dict: logMessage.dictionaryWithValues(forKeys: CanaryManager.StoreLogKeys), timestamp: logMessage.timestamp.timeIntervalSince1970)
    }
}
