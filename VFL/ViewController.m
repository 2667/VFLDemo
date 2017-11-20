//
//  ViewController.m
//  VFL
//
//  Created by chen on 16/4/19.
//  Copyright © 2016年 jeck. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //VFL学习网址://https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/AutoLayoutbyExample/AutoLayoutbyExample.html#//apple_ref/doc/uid/TP40010853-CH5-SW1
    
    //VFL语法总结：
    //（1）“H”表示水平方向，“V”表示垂直方向
    //（2）“|”表示父视图的边界
    //（3）“[]”表示这是一个视图UIView的子类，可以组合多个条件，条件用"()",多个条件用逗号隔开[view(>=100,<200)]
    //（4）“@”表示优先级
    // (5) VFL语法适配分为横向和垂直方向,对两个方向分别考虑,两个方向上互不影响,各自管各自的
    //创建子视图(这里以button为例,只做个演示,没给方法,也可以是view)
    //声明一个常量
    CGFloat  qtt = 0;
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:leftButton];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.backgroundColor = [UIColor greenColor];
    [self.view addSubview:rightButton];
    
    UIButton *bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
    bottomButton.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:bottomButton];
    
    //关闭Autoresizing(使用VFL语法加约束,必须先将子视图的Autoresizing关闭,否则会出问题)
    [leftButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [rightButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [bottomButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSMutableArray *mutArray = [[NSMutableArray alloc] init];
    //设置横向约束
    [mutArray addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[leftButton]-20-[rightButton(==leftButton)]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(leftButton,rightButton)]];
    
    [mutArray addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[bottomButton]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(bottomButton)]];
    
    //设置垂直的约束
    [mutArray addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[leftButton]-20-[bottomButton(==leftButton)]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(leftButton,bottomButton)]];

    [mutArray addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[rightButton(==leftButton)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(rightButton,leftButton)]];
    
    [self.view addConstraints:mutArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
