//
//  ViewController.m
//  03-应用管理器
//
//  Created by qingyun on 15/6/27.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "QYAppView.h"
#import "QYApp.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *apps;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 总列数
    int totalColumn = 4;
    
    // appView的高度、宽度
    CGFloat appW = 80;
    CGFloat appH = 90;
    
    // appView水平方向和垂直方向的间距
    CGFloat marginX = (kScreenW - (totalColumn*appW)) / (totalColumn+1);
    CGFloat marginY = 30;
    
    for (int i = 0; i < self.apps.count; i++) {
        // 1. 创建appView，并添加到self.view上 (V)
        QYAppView *appView = [QYAppView appView];
        int row = i / totalColumn;
        int column = i % totalColumn;
        CGFloat appX = marginX + column*(appW+marginX);
        CGFloat appY = marginY + row*(appH+marginY);

        appView.frame = CGRectMake(appX, appY, appW, appH);

        [self.view addSubview:appView];
        
        // 2. 设置appView的数据  (M)
        QYApp *app = self.apps[i];
        appView.app = app;
   }
}

- (NSArray *)apps
{
    if (_apps == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"apps" ofType:@"plist"];
        NSArray *apps = [NSArray arrayWithContentsOfFile:path];
        
        // 创建模型对象数组，将apps中的字典依次转化为模型对象
        NSMutableArray *models = [NSMutableArray array];
        for (NSDictionary *dict in apps) {
            QYApp *model = [QYApp appWithDictionary:dict];
            [models addObject:model];
        }
        _apps = models;
    }
    
    return _apps;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
