//
//  CTMediator+ModuleB.h
//  ModuleB_Category_Example
//
//  Created by Hank on 2022/6/2.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

/**
 因为ModuleA引入ModuleB_Category时，需要在.podspec文件中s.dependency='xxx'引入，所以只能将
 ModuleB_Category先一步提交到远程仓库
 目前掌握的知识程度，只能想到这一步
 */

#import <CTMediator/CTMediator.h>

@interface CTMediator (ModuleB)

- (UIViewController *)ModuleB_bViewControllerWithContentText:(NSString *)contentText;

@end
