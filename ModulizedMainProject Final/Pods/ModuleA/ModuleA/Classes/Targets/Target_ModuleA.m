//
//  Target_ModuleA.m
//  ModuleA_Example
//
//  Created by Hank on 2022/6/2.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import "Target_ModuleA.h"
#import "AViewController.h"

@implementation Target_ModuleA

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    AViewController *viewController = [[AViewController alloc] init];
//    viewController.params = params; //如果需要传参
    return viewController;
}

@end
