//
//  ViewController.m
//  RoundedDemo
//
//  Created by csdc-iMac on 16/1/13.
//  Copyright (c) 2016年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//设备的宽高
#define SCREENHEIGHT      [UIScreen mainScreen].bounds.size.height
#define SCREENWIDTH       [UIScreen mainScreen].bounds.size.width
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 圆形头像
    UIImageView *avatarImgView = [[UIImageView alloc] initWithFrame:CGRectMake((SCREENWIDTH - 75) / 2, 150, 75, 75)];
    avatarImgView.image = [UIImage imageNamed:@"icon"];
    // 图片做圆形，圆角角度为宽度的一般，而高宽一直，因此可以形成正圆
    avatarImgView.layer.masksToBounds = YES;
    avatarImgView.layer.cornerRadius = avatarImgView.frame.size.height / 2 ;
    [self.view addSubview:avatarImgView];
    
    // 完全半圆圆角的按钮
    UIButton *btnOne = [[UIButton alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 250, 200, 40)];
    [btnOne setTitle:@"完全圆角" forState:UIControlStateNormal];
    [btnOne setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnOne setBackgroundColor:[UIColor colorWithRed:228.0/255.0 green:117.0/255.0 blue:97.0/255.0 alpha:1.0]];
    // 按钮圆弧，以高度的一半为圆角，两边会形成完整的半圆
    btnOne.layer.masksToBounds = YES;
    btnOne.layer.cornerRadius = btnOne.frame.size.height / 2;
    [self.view addSubview:btnOne];
    
    // 小圆角的按钮
    UIButton *btnTwo = [[UIButton alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 315, 200, 40)];
    [btnTwo setTitle:@"小圆角" forState:UIControlStateNormal];
    [btnTwo setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnTwo setBackgroundColor:[UIColor colorWithRed:228.0/255.0 green:117.0/255.0 blue:97.0/255.0 alpha:1.0]];
    // 按钮圆弧，以高度的一半为圆角，两边会形成完整的半圆
    btnTwo.layer.masksToBounds = YES;
    btnTwo.layer.cornerRadius = 4.0;
    [self.view addSubview:btnTwo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
