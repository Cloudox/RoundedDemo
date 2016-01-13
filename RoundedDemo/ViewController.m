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
    
    UIImageView *avatarImgView = [[UIImageView alloc] initWithFrame:CGRectMake((SCREENWIDTH - 75) / 2, 150, 75, 75)];
    avatarImgView.image = [UIImage imageNamed:@"icon"];
    // 图片做圆形，圆角角度为宽度的一般，而高宽一直，因此可以形成正圆
    avatarImgView.layer.masksToBounds = YES;
    avatarImgView.layer.cornerRadius = avatarImgView.frame.size.width / 2 ;
    [self.view addSubview:avatarImgView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
