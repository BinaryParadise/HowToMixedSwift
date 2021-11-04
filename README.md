# HowToMixedSwift

列举Objective-C和Swift各种场景下混编的方法，英语不好别在意。

> PS: 假设读者基础知识掌握全面, 常用的知识点一笔带过。

`wift要提供给oc使用需要加关键字@objc、类需要继承自NSObject`

## 项目中混编

### 在OC中使用Swift

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

### 在Swift中使用OC

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

### 使用纯OC库

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

### 使用纯Swift库

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