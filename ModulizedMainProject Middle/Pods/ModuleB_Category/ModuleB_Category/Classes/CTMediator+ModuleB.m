//
//  CTMediator+ModuleB.m
//  ModuleB_Category_Example
//
//  Created by Hank on 2022/6/2.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//
/**
 要点参考 ModuleA_Category
 */
#import "CTMediator+ModuleB.h"

@implementation CTMediator (ModuleB)

- (UIViewController *)ModuleB_bViewControllerWithContentText:(NSString *)contentText {
//    BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, Modulization design!"];
//    [self.navigationController pushViewController:viewController animated:YES];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"contentText"] = contentText;
    return [self performTarget:@"ModuleB" action:@"viewController" params: params shouldCacheTarget:NO];
}

@end
