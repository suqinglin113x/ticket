//
//  TicketsView.h
//  加息券布局
//
//  Created by 苏庆林 on 2018/3/10.
//  Copyright © 2018年 苏庆林. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface TicketsView : UIView

// 需要几个视图
@property (nonatomic, assign) NSInteger numb;
- (instancetype)initWithArr:(NSArray *)arr;

@end
