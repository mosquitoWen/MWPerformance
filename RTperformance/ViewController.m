//
//  ViewController.m
//  RTperformance
//
//  Created by wen zhang on 2017/5/10.
//  Copyright © 2017年 Gwen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    touchBtn.frame = CGRectMake(100, 100, 300, 50);
    touchBtn.backgroundColor = [UIColor cyanColor];
    [touchBtn setTitle:@"一点就卡" forState:UIControlStateNormal];
    [touchBtn addTarget:self action:@selector(blockMainThread) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:touchBtn];
    
}

- (void)blockMainThread {
    for (int i = 0; i < 3; i++) {
        sleep(1);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
