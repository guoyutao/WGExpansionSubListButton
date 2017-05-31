//
//  ViewController.m
//  WGExpansionSubListButton
//
//  Created by guoyutao on 2017/5/31.
//  Copyright © 2017年 guoyutao. All rights reserved.
//

#import "ViewController.h"
#import "WGExpansionSubListButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    WGExpansionSubListButton *animationButton = [WGExpansionSubListButton buttonWithType:UIButtonTypeCustom];
    animationButton.frame = CGRectMake(50, 100, 30, 30);
    [animationButton setImage:[UIImage imageNamed:@"sanjiao"] forState:UIControlStateNormal];
    [self.view addSubview:animationButton];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
