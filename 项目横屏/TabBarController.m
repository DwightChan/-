//
//  TabBarController.m
//  项目横屏
//
//  Created by 颖 on 16/5/6.
//  Copyright © 2016年 颖. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 * 1. 以下三个方法为设置控制器可横屏所添加（若项目中应用到了tabbarcontroller与navgatoioncontroller,这两个控制器均需要添加这三个方法，但方法在二者中的实现有所不同）
 2. 项目先要设置横、竖屏都支持，然后在不需要横屏的controller中override这三个方法，需要截屏的controller中不需要做设置
 *
 *  @return
 */
- (BOOL)shouldAutorotate
{
    return [self.selectedViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
