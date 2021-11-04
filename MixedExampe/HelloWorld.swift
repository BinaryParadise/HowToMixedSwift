//
//  HelloWorld.swift
//  MixedExampe
//
//  Created by Rake Yang on 2021/11/4.
//

import Foundation
import PureOCLib
import PureSwiftLib

@objc class HelloWorld: NSObject {
    
    @objc func hello() {
        //项目中使用OC
        print(Outdate.warning())
        
        print("Hello, Swift!")
        
        print(PureOCLibVersion.ver())
        
        print(PureSwiftVersion.ver())
    }
}
