//
//  CTMediator+ModuleA.m
//  ModuleA_Category_Example
//
//  Created by Hank on 2022/6/2.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import "CTMediator+ModuleA.h"

@implementation CTMediator (ModuleA)

- (UIViewController *)ModuleA_aViewController
{
    /*
        AViewController *viewController = [[AViewController alloc] init];
     */
    return [self performTarget:@"ModuleA" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
