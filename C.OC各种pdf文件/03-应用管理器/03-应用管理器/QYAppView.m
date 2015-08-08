//
//  QYAppView.m
//  03-应用管理器
//
//  Created by qingyun on 15/6/27.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYAppView.h"
#import "QYApp.h"

@interface QYAppView ()
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end

@implementation QYAppView

+ (instancetype)appView
{
    /*
     * 在这里，创建并返回appView对象
     * 1. 可以用纯代码来实现
     * 2. 也可以从Bundle中加载Xib来实现
     * 最终的好处就是对外隐藏实现细节，进行封装，进而让使用者更方便使用我们这个类
     */
    
    return [[NSBundle mainBundle] loadNibNamed:@"QYAppView" owner:nil options:nil][0];
}

- (void)setApp:(QYApp *)app
{
    _app = app;
    
    // 1. 更新icon的image
    _icon.image = [UIImage imageNamed:app.icon];
    
    // 2. 更新title的文本
    _title.text = app.name;
}

@end
