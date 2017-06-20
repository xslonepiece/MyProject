//
//  ViewController.m
//  MyProject
//
//  Created by xsl on 2017/6/20.
//  Copyright © 2017年 onepiece. All rights reserved.
//

#import "ViewController.h"
#import "GradientButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GradientButton *btn = [GradientButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 200, 50)];
    [btn setStartDirection:GradientLeft endDirection:GradientRight];
    [btn setGradientColors:@[[UIColor redColor],[UIColor yellowColor]] forState:UIControlStateNormal];
    [btn setGradientColors:@[[UIColor blueColor],[UIColor redColor]] forState:UIControlStateSelected];
    btn.center = self.view.center;
    [self.view addSubview:btn];
}

@end
