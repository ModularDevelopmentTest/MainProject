//
//  CTMediator+ModuleA.h
//  ModuleA_Category_Example
//
//  Created by Hank on 2022/6/2.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

/**
 业务模块A中 Target-Action 中
 对象一定要是 Target_ModuleA，Action必须要是Action_aViewController
 self performTarget:@"ModuleA" action:@"viewController" params:
 
 因为CTMediator中runtime运行时机制寻找机制是
 Class和SEL通过  Target_x ，Action_xxx 隐射出对应的类和方法
 targetClassString = [NSString stringWithFormat:@"Target_%@", targetName];
 Class targetClass = NSClassFromString(targetClassString);
 target = [[targetClass alloc] init];
 
 NSString *actionString = [NSString stringWithFormat:@"Action_%@:", actionName];
 SEL action = NSSelectorFromString(actionString);
 */

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleA)

- (UIViewController *)ModuleA_aViewController;

@end

NS_ASSUME_NONNULL_END
