//
//  AViewController.m
//  MainProject
//
//  Created by Test on 2022/6/2.
//
/**
 #warning 如果引入本地的ModuleB_Category，这两种方式都会导致找不到 'CTMediator+ModuleB.h' file not found，只能先将 ModuleB_Category导入远程仓库，再引入，还是有问题 file not found； 注意因为这个ModuleA它是一个Pods库，所以不能直接在Podfile文件中引入，需要在 .podspec文件中 s.dependency='' 引入， 这样才能#import。 目前测试必须将被引入的库中所引入的库同步方法当前私有库，或者注释掉Podfile文件中的 use_Framework!

 use_frameworks!
 如果不使用 use_frameworks!，Pods 项目最终会编译成一个名为 libPods-ProjectName.a 的文件，主项目只需要依赖这个 .a 文件即可。
 使用 use_frameworks!，Pods 项目最终会编译成一个名为 Pods-ProjectName.framework 的文件，主项目只需要依赖这个 .framework 文件即可。
 在 Swift 项目中是不支持静态库的，所以在 Swift 项目，CocoaPods 提供了动态 Framework 的支持，通过 use_frameworks! 选项控制。
 */

#import "AViewController.h"
#import <ModuleB_Category/CTMediator+ModuleB.h>
//@import ModuleB_Category.CTMediator_ModuleB;
#import <HandyFrame/UIView+LayoutMethods.h>

@interface AViewController ()

@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation AViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
    
    self.title = @"业务模块A入口";
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    [self.pushBViewControllerButton sizeToFit];
    [self.pushBViewControllerButton centerEqualToView:self.view];
}

#pragma mark - event response
- (void)didTappedPushBViewControllerButton:(UIButton *)button
{
    UIViewController *viewController = [[CTMediator sharedInstance] ModuleB_bViewControllerWithContentText:@"hello, Modulization design!"];
//    BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, Modulization design!"];
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton
{
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}

@end
