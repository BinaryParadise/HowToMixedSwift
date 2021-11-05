<!--ts-->
   * [一、项目中混编](#一项目中混编)
      * [在oc中使用swift](#在oc中使用swift)
      * [在swift中使用oc库](#在swift中使用oc库)
      * [使用纯oc库](#使用纯oc库)
      * [使用纯swift库](#使用纯swift库)
   * [二、在库内部混编](#二在库内部混编)
      * [在OC中使用Swift代码](#在oc中使用swift代码)
      * [在swift中使用oc代码](#在swift中使用oc代码)
   * [三、库中使用其它库](#三库中使用其它库)
      * [纯oc库中使用纯swift库](#纯oc库中使用纯swift库)
      * [纯oc库中使用混编库](#纯oc库中使用混编库)
      * [纯swift库中使用纯oc库](#纯swift库中使用纯oc库)
      * [纯swift库中使用混编库](#纯swift库中使用混编库)

<!-- Added by: rakeyang, at: 2021年11月 5日 星期五 10时44分55秒 CST -->

<!--te-->

列举Objective-C和Swift各种场景下混编的方法，英语不好别在意某些细节。

`swift要提供给oc使用需要加关键字@objc、类需要继承自NSObject,所有库都是用Module方式导出`

三方混编库`CocoaLumberjack/Swift`

## 一、项目中混编

### 在oc中使用swift

1、首次添加`HelloWorld.swift`文件时按照提示创建`Objective-C bridging header`文件

```swift
// HelloWorld.swift

@objc HelloWorld: NSObject {
    @objc func hello() {
        // code ...
    }
}

```

2、在`.h`或者`.m`（推荐）导入自动生成`TargetName-swift.h`

```objc
#import "MixedExampe-Swift.h"

// 调用swift类中定义的实例方法
[[[HelloWorld alloc] init] hello];
```

### 在swift中使用oc库

1、在`Objective-C bridging header`中增加导入

```objc
// Outdate.h
@interface Outdate : NSObject

+ (NSString *)warning;

@end
```

```objc
#import "Outdate.h"
```

2、在swift文件中即可使用

```swift
Outdate.warning()
```

### 使用纯oc库

> 推荐OC库使用module方式提供

1、OC文件中使用纯OC库

```objc
//导入
@import PureOCLib;

NSLog(@"%@", [PureOCLibVersion ver]);

```

2、swift文件中使用OC库

```swift
// 导入
import PureOCLib

print(PureOCLibVersion.ver())
```

### 使用纯swift库

1、OC文件中使用纯swift库

```objc
//导入
import PureSwiftLib

NSLog(@"%@", [PureSwiftVersion ver]);

```

2、swift文件中使用纯swift库

```swift
// 导入
import PureOCLib

print(PureSwiftVersion.ver())

### 使用混编库

1、OC文件中使用混编库

```objc
//导入
@import MixedLib;

print(MixedOCVersion.ver())        
print(MixedSwiftVersion.ver())
```

2、swift文件中使用混编库

```swift
import MixedLib

print(MixedOCVersion.ver())        
print(MixedSwiftVersion.ver())
```

## 二、在库内部混编

### 在OC中使用Swift代码

```objc

// 静态库导入
#import "MixedLib-Swift.h"

// 动态库导入
#import <MixedLib/MixedLib-Swift.h>

[MixedSwiftVersion ver];
```

### 在swift中使用oc代码

`直接使用`

## 三、库中使用其它库

### 纯oc库中使用纯swift库

```objc
// 导入swift库
@import PureSwiftLib2;

[PureSwiftVersion2 ver];
```
### 纯oc库中使用混编库

```objc
// 导入混编库
@import CocoaLumberjack;

DDLogDebug(@"0.1.0 （Pure OC Lib）");
```

### 纯swift库中使用纯oc库

```swift
import PureOCLib2

PureOCVersion2.ver()
```

### 纯swift库中使用混编库

```swift
import CocoaLumberjack

DDLogDebug("0.1.0 （Pure Swift Lib2）")
```