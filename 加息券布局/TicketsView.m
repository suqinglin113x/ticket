//
//  TicketsView.m
//  加息券布局
//
//  Created by 苏庆林 on 2018/3/10.
//  Copyright © 2018年 苏庆林. All rights reserved.
//


#import "TicketsView.h"
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface TicketsView ()
@property (nonatomic, strong) NSArray *imagArr;

@end
@implementation TicketsView


- (instancetype)initWithArr:(NSArray *)arr
{
    if (self = [super init]) {
        self.backgroundColor = [UIColor groupTableViewBackgroundColor];
        [self drawViewArr:arr];
    }
    return self;
}

- (void)drawViewArr:(NSArray *)arr
{
    
    NSInteger count = arr.count;
    if (!count) {
        return;
    }
    // 行数
    NSInteger rows =  count / 3 ;
    // 列数
    NSInteger rests = count % 3;
    
    CGFloat gap = 10;
    // item 大小
    CGFloat width = (SCREENWIDTH - 4 *gap ) / 3;
    CGFloat height = 60;
    
    CGFloat backHeight = (rests == 0? (gap + (height +gap) * rows) : (gap + (height +gap) * (rows + 1)));
    self.frame = CGRectMake(0, 0, SCREENWIDTH, backHeight);
    
    NSInteger number = 0;
    // 画行
    if (rows) {
        for (NSInteger row = 0; row < rows; row ++) {
            for (NSInteger column = 0; column < 3; column ++) {
                UIImageView *imageV = [[UIImageView alloc] init];
                imageV.frame = CGRectMake(gap +(gap +width) * column, gap +(height + gap) *row, width, height);
                [self addSubview:imageV];
                number ++;
                imageV.tag = number;
                imageV.image = [UIImage imageNamed:self.imagArr[arc4random() % 5]];
            }
        }
    }
    
    // 画列
    if (rests) { //   1
        CGFloat gap2 = (SCREENWIDTH - width *rests - gap *(rests -1)) / 2;
        CGFloat topHeight = gap + (height + gap) *rows;
        
        for (NSInteger column = 0; column < rests; column ++) {
            UIImageView *imgV = [[UIImageView alloc] init];
            imgV.frame = CGRectMake(gap2 + (width + gap) *column, topHeight, width, height);
            [self addSubview:imgV];
            imgV.tag = rows *3 + column;
            imgV.image = [UIImage imageNamed:self.imagArr[arc4random() % 5]];
        }
        
        
    }
}

- (NSArray *)imagArr
{
    if (_imagArr == nil) {
        _imagArr = @[@"1", @"2", @"3", @"4", @"5"];
    }
    return _imagArr;
}
@end
