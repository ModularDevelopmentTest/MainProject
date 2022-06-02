//
//  BViewController.m
//  MainProject
//
//  Created by Test on 2022/6/2.
//

#import "BViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>

@interface BViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation BViewController

#pragma mark - life cycle
- (instancetype)initWithContentText:(NSString *)contentText
{
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
    self.title = @"业务模块B入口";
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    [self.contentLabel centerEqualToView:self.view];
}

#pragma mark - getters and setters
- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end
