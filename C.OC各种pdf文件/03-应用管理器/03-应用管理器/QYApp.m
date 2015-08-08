//
//  QYApp.m
//  03-应用管理器
//
//  Created by qingyun on 15/6/27.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYApp.h"

@implementation QYApp

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        _icon = dict[@"icon"];
        _name = dict[@"name"];
    }
    
    return self;
}

+ (instancetype)appWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

@end
