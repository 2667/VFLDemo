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
//    [self setUpView3];
    [self cutString];

}


-(void)cutString {
//    NSString *originalStirng = @"abcdefg";
//    NSString *string1 = [originalStirng substringFromIndex:3];
//    NSLog(@"string1 neiron:\n%@",string1);
//
//    NSString *string2 = [originalStirng substringToIndex:3];
//    NSLog(@"string2 neiron:\n%@",string2);
//    NSRange rang = NSMakeRange(3, 3);
//    NSString *string3 = [originalStirng substringWithRange:rang];
//    NSLog(@"string3 neiron:\n%@",string3);

    //2.
//    NSString *str = nil;
//    // 把后面需要加密的字段转成json
//    NSDictionary* parmDictionary = @{@"uuid":@"sddsf",
//                                     @"extras":@"",@"extras2":str
//                                     };
//    NSLog(@"parmDictionary neiron%@",parmDictionary);
    
    
    NSString *testString = @"sdfsdfgf36ghjkm";
    //被拼接的字符串为空
//    NSString *serviceEmail = @"";
//被拼接的字符串为nil
    NSString *serviceEmail = nil;
    if (serviceEmail != nil) {
        NSString *string2 = [testString stringByAppendingString:serviceEmail];
        NSLog(@"string2 canshu neiron%@",string2);

    }
    
}

-(void)setUpView3 {
    //相对superview的约束
        UIButton *blueBtn = [[UIButton alloc] init];
    [blueBtn setImage:[UIImage imageNamed:@"gasdk_back.png"] forState:UIControlStateNormal];
    blueBtn.backgroundColor = [UIColor blueColor];
        // 不要将AutoresizingMask转为Autolayout的约束
        blueBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueBtn];
    
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.textColor = [UIColor redColor];
    titleLabel.text = @"账号";
    titleLabel.font = [UIFont systemFontOfSize:15];
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];

    NSNumber *margin = @10;
    //添加水平方向的间距
       NSString *vfl = @"H:|-margin-[blueBtn(20)]";
    NSString *vf2 = @"V:|-margin-[blueBtn(30)]";
    NSDictionary *views = NSDictionaryOfVariableBindings(blueBtn, self.view);
    NSDictionary *mertrics = NSDictionaryOfVariableBindings(margin);

    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:vfl options:kNilOptions metrics:mertrics views:views];
    [self.view addConstraints:constraints];
    
    //添加垂直方向的间距
    NSArray *constraints2 = [NSLayoutConstraint constraintsWithVisualFormat:vf2 options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:mertrics views:views];
    [self.view addConstraints:constraints2];
    
    //titleLabel添加水平方向的间距
    NSString *vf3 = @"H:|-margin-[titleLabel]-margin-|";
    NSString *vf4 = @"V:|-margin-[titleLabel(30)]";
    NSDictionary *views2 = NSDictionaryOfVariableBindings(titleLabel, self.view);
    
    NSArray *constraints4 = [NSLayoutConstraint constraintsWithVisualFormat:vf3 options:kNilOptions metrics:mertrics views:views2];
    [self.view addConstraints:constraints4];
    
 NSArray *constraints5 = [NSLayoutConstraint constraintsWithVisualFormat:vf4 options:kNilOptions metrics:mertrics views:views2];
    [self.view addConstraints:constraints5];

    
    UIButton *registBtn = [[UIButton alloc] init];
    [registBtn setTitle:@"注册" forState:UIControlStateNormal];
    [registBtn setTintColor:[UIColor redColor]];
    registBtn.backgroundColor = [UIColor blueColor];
    // 不要将AutoresizingMask转为Autolayout的约束
    registBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:registBtn];
//    //添加水平方向的间距
    NSString *vf5 = @"H:|-margin-[registBtn]-margin-|";
    NSString *vf6 = @"V:[titleLabel]-60-[registBtn(40)]";
    NSDictionary *views3 = NSDictionaryOfVariableBindings(registBtn, titleLabel);

    NSArray *constraints6 = [NSLayoutConstraint constraintsWithVisualFormat:vf5 options:kNilOptions metrics:mertrics views:views3];
    [self.view addConstraints:constraints6];

    NSArray *constraints7 = [NSLayoutConstraint constraintsWithVisualFormat:vf6 options:kNilOptions metrics:mertrics views:views3];
    [self.view addConstraints:constraints7];
    
    
    //创建一个按钮与superview中心对齐
    UIButton *middleBtn = [[UIButton alloc] init];
    [middleBtn setTitle:@"注册" forState:UIControlStateNormal];
    [middleBtn setTintColor:[UIColor redColor]];
    middleBtn.backgroundColor = [UIColor blueColor];
    // 不要将AutoresizingMask转为Autolayout的约束
    middleBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:middleBtn];
    //    //添加水平方向的间距
    NSString *vf7 = @"H:[middleBtn(80)]";
    NSString *vf8 = @"V:[registBtn]-60-[middleBtn(40)]";
    NSDictionary *views4 = NSDictionaryOfVariableBindings(registBtn, middleBtn);
    NSDictionary *views5 = NSDictionaryOfVariableBindings(middleBtn,self);

    NSArray *constraints8 = [NSLayoutConstraint constraintsWithVisualFormat:vf7 options:NSLayoutFormatAlignAllCenterX metrics:mertrics views:views5];
    [self.view addConstraints:constraints8];
    
    NSArray *constraints9 = [NSLayoutConstraint constraintsWithVisualFormat:vf8 options:kNilOptions metrics:mertrics views:views4];
    [self.view addConstraints:constraints9];
    
    
    //////////
//    UIActivityIndicatorView* prgrssView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
//    prgrssView.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:prgrssView];
//
//    NSDictionary* views20 = NSDictionaryOfVariableBindings(prgrssView);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[prgrssView]-|" options:NSLayoutFormatAlignAllCenterX metrics:kNilOptions views:views20]];
////    上面的代码可以让prgrssView 水平居中。垂直代码如下
//
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[prgrssView]-|" options:NSLayoutFormatAlignAllCenterY metrics:kNilOptions views:views20]];
//    以上代码测试下来只对UIActivityIndicatorView有效，如果一个view有宽度和高度则上面的居中代码会报错。可以通过另一种方式来处理，具体代码如下
    
    //beging
    UIImageView* imagevew = [[UIImageView alloc]init];
    [imagevew setContentMode:UIViewContentModeScaleToFill];
    [imagevew setBackgroundColor:[UIColor redColor]];
    imagevew.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imagevew];


    NSDictionary* views21 = NSDictionaryOfVariableBindings(imagevew);

    NSString *vf10 = @"H:[imagevew(60)]";
    NSString *vf11 = @"V:|-[imagevew(60)]";
    NSArray *constraints13 = [NSLayoutConstraint constraintsWithVisualFormat:vf10 options:kNilOptions metrics:mertrics views:views21];
      NSArray *constraints14 = [NSLayoutConstraint constraintsWithVisualFormat:vf11 options:kNilOptions metrics:mertrics views:views21];
    [self.view addConstraints:constraints13];
    [self.view addConstraints:constraints14];

    //设置高度
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[imagevew(60)]" options:kNilOptions metrics:nil views:views21]];
//    //设置宽度
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[imagevew(60)]" options:kNilOptions metrics:nil views:views21]];
    //垂直居中
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imagevew attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
//    //水平居中
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imagevew attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    //end
//    这样就设置了一个imageview其大小为60*60 在整个视图中居中。
}

-(void)setUpView1{
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    // 不要将AutoresizingMask转为Autolayout的约束
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    // 不要将AutoresizingMask转为Autolayout的约束
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redView];
    
    // 间距
    NSNumber *margin = @20;
    
    // 添加水平方向的约束
    NSString *vfl = @"H:|-margin-[blueView]-margin-[redView(==blueView)]-margin-|";
    NSDictionary *views = NSDictionaryOfVariableBindings(blueView, redView);
    NSDictionary *mertrics = NSDictionaryOfVariableBindings(margin);
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:vfl options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:mertrics views:views];
    
    [self.view addConstraints:constraints];
    
    // 添加竖直方向的间距
    NSNumber *height = @40;
    NSString *vfl2 = @"V:[blueView(height)]-margin-|";
    NSDictionary *mertrics2 = NSDictionaryOfVariableBindings(margin, height);
    NSArray *constraints2 = [NSLayoutConstraint constraintsWithVisualFormat:vfl2 options:kNilOptions metrics:mertrics2 views:views];
    [self.view addConstraints:constraints2];
   
    
    
}

-(void)setUpView2{
    //VFL学习网址://https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/AutoLayoutbyExample/AutoLayoutbyExample.html#//apple_ref/doc/uid/TP40010853-CH5-SW1
    
    //VFL语法总结：
    //（1）“H”表示水平方向，“V”表示垂直方向
    //（2）“|”表示父视图的边界
    //（3）“[]”表示这是一个视图UIView的子类，可以组合多个条件，条件用"()",多个条件用逗号隔开[view(>=100,<200)]
    //（4）“@”表示优先级
    // (5) VFL语法适配分为横向和垂直方向,对两个方向分别考虑,两个方向上互不影响,各自管各自的
    //创建子视图(这里以button为例,只做个演示,没给方法,也可以是view)
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
