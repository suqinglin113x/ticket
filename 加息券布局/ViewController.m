//
//  ViewController.m
//  加息券布局
//
//  Created by 苏庆林 on 2018/3/10.
//  Copyright © 2018年 苏庆林. All rights reserved.
//


#import "ViewController.h"
#import "TicketsView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray *arr = @[@"哈客户", @"家看到", @"阿尔及",@"哈客户", @"阿尔及",@"哈客户", @"阿尔及"];
    TicketsView *vi = [[TicketsView alloc] initWithArr:arr];
    vi.center = self.view.center;
    [self.view addSubview:vi];
}
@end
