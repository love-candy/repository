//
//  QYAppView.h
//  03-应用管理器
//
//  Created by qingyun on 15/6/27.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QYApp;
@interface QYAppView : UIView
@property (nonatomic, strong) QYApp *app;

+ (instancetype)appView;



@end
