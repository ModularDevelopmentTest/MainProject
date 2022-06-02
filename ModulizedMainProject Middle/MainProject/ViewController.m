//
//  ViewController.m
//  MainProject
//
//  Created by Test on 2022/6/2.
//

#import "ViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import <ModuleA_Category/CTMediator+ModuleA.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *pushAViewControllerButton;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.pushAViewControllerButton];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    [self.pushAViewControllerButton sizeToFit];
    [self.pushAViewControllerButton centerEqualToView:self.view];
}

#pragma mark - event response
- (void)didTappedPushAViewControllerButton:(UIButton *)button
{
    UIViewController *viewController = [[CTMediator sharedInstance] ModuleA_aViewController];
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushAViewControllerButton
{
    if (_pushAViewControllerButton == nil) {
        _pushAViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAViewControllerButton setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_pushAViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAViewControllerButton addTarget:self action:@selector(didTappedPushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushAViewControllerButton;
}
@end
