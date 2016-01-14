# RoundedDemo
设置圆角、制作圆形图片的demo

## 介绍
方方正正的样式往往会显得很生硬，而圆角的样式会让人产生别样的亲切感，现在越来越多地用到圆角，诸如用户头像之类的图片也大都用圆形来显示，本工程就介绍如何设置按钮、文本框的圆角以及制作圆形的图片。

## 效果图
![](https://github.com/Cloudox/RoundedDemo/blob/master/demo.jpg)

## 实现方法
如效果图所示，我们制作了一个圆形的头像，一个完全半圆的圆角按钮，一个小圆角的按钮，以及一个带边框且边框为圆角的label。
大概思路如下：
View都有一个layer的属性，我们正是通过layer的一些设置来达到圆角的目的，因此诸如UIImageView、UIButton、UILabel等view都可以设置相应的圆角。

对于圆形的头像，要制作正圆，我们需要首先设置UIImageView的高宽的一致的，然后我们设置其圆角角度为高度除以2即可，相当于90度，代码如下：
```Objective-c
// 圆形头像  
UIImageView *avatarImgView = [[UIImageView alloc] initWithFrame:CGRectMake((SCREENWIDTH - 75) / 2, 150, 75, 75)];  
avatarImgView.image = [UIImage imageNamed:@"icon"];  
// 图片做圆形，圆角角度为高度的一半，而高宽一致，因此可以形成正圆  
avatarImgView.layer.masksToBounds = YES;  
avatarImgView.layer.cornerRadius = avatarImgView.frame.size.height / 2 ;  
[self.view addSubview:avatarImgView];  
```

对于第二个完全的半圆圆角，我们同样设置角度为高度的一般，这样可以在两边形声半圆，而由于宽度与高度不同，所以不是正圆：
```Objective-c
// 完全半圆圆角的按钮  
UIButton *btnOne = [[UIButton alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 250, 200, 40)];  
[btnOne setTitle:@"完全圆角" forState:UIControlStateNormal];  
[btnOne setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];  
[btnOne setBackgroundColor:[UIColor colorWithRed:228.0/255.0 green:117.0/255.0 blue:97.0/255.0 alpha:1.0]];  
// 按钮圆弧，以高度的一半为圆角，两边会形成完整的半圆  
btnOne.layer.masksToBounds = YES;  
btnOne.layer.cornerRadius = btnOne.frame.size.height / 2;  
[self.view addSubview:btnOne];  
```

对于第三个小圆角的按钮，我们直接设置圆角的圆度为一个数即可，数的大小决定了按钮圆角的样式，这里我们设为4：
```Objective-c
// 小圆角的按钮  
UIButton *btnTwo = [[UIButton alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 315, 200, 40)];  
[btnTwo setTitle:@"小圆角" forState:UIControlStateNormal];  
[btnTwo setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];  
[btnTwo setBackgroundColor:[UIColor colorWithRed:228.0/255.0 green:117.0/255.0 blue:97.0/255.0 alpha:1.0]];  
// 按钮圆弧，以高度的一半为圆角，两边会形成完整的半圆  
btnTwo.layer.masksToBounds = YES;  
btnTwo.layer.cornerRadius = 4.0;  
[self.view addSubview:btnTwo];  
```

第四个label，我们先要添加边框，我们设置边框宽度为1，就可以显示边框了，然后同样设置圆角为4：
```Objective-c
// 带边框的圆角Label  
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200) / 2, 390, 200, 40)];  
label.text = @"带边框圆角label";  
label.textAlignment = NSTextAlignmentCenter;  
label.textColor = [UIColor colorWithRed:228.0/255.0 green:117.0/255.0 blue:97.0/255.0 alpha:1.0];  
// 设置边框宽度  
label.layer.borderWidth = 1.0;  
// 设置边框颜色  
label.layer.borderColor = [[UIColor colorWithRed:228.0/255.0 green:117.0/255.0 blue:97.0/255.0 alpha:1.0] CGColor];  
// 设置圆角  
[label.layer setCornerRadius:4.0];  
[self.view addSubview:label];  
```

详情查看[我的博客](http://blog.csdn.net/cloudox_/article/details/50511531)
