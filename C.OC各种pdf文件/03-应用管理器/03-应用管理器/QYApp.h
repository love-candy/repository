//
//  QYApp.h
//  03-应用管理器
//
//  Created by qingyun on 15/6/27.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYApp : NSObject
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (instancetype)appWithDictionary:(NSDictionary *)dict;

@end
