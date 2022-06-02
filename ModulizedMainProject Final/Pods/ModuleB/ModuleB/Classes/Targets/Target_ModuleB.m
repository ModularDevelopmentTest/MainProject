//
//  Target_ModuleB.m
//  MainProject
//
//  Created by Hank on 2022/6/2.
//

#import "Target_ModuleB.h"
#import "BViewController.h"

@implementation Target_ModuleB

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    NSString *contentText = params[@"contentText"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText];
    return viewController;
}

@end
