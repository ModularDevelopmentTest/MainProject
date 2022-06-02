//
//  Target_ModuleA.h
//  ModuleA_Example
//
//  Created by Hank on 2022/6/2.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//
/**
 根据工具组件ModuleA_Category 创建类和方法
 - (UIViewController *)ModuleA_aViewController
 {
 //AViewController *viewController = [[AViewController alloc] init];
 return [self performTarget:@"ModuleA" action:@"viewController" params:nil shouldCacheTarget:NO];
 
 因为Target对象处于A的命名域中，所以Target对象中可以随意import ModuleA业务线中的任何头文件
 此外不是仅仅用于返回ViewController实例的，它可以用来执行各种属于业务线本身的任务
 
 换个角度说就是：Action具备调度业务线提供的任何对象和方法来完成自己的任务的能力。
 它的本质就是【对外业务的一层服务化封装】。
 }
 */

#import <UIKit/UIKit.h>

@interface Target_ModuleA : NSObject

- (UIViewController *)Action_viewController:(NSDictionary *)params;

@end
