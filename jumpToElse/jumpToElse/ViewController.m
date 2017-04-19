//
//  ViewController.m
//  jumpToElse
//
//  Created by user on 2017/4/16.
//  Copyright © 2017年 user. All rights reserved.
//

#import "ViewController.h"
#import "secendViewController.h"
#import "xibViewController.h"
#import "codeViewController.h"
#import "QuartzCore/QuartzCore.h"

@interface ViewController ()
@property  UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //跳转到故事板按钮
    UIButton *btnToSB = [UIButton buttonWithType:UIButtonTypeRoundedRect];  //定义button类型为圆角矩形
    [self.view addSubview:btnToSB];                                         //显示控件
    btnToSB.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2-50, 200, 100, 50);                          //设置(X轴位置，Y轴位置，宽，长)
    btnToSB.backgroundColor = [UIColor lightGrayColor];                     //设置背景颜色
    [btnToSB setTitle:@"故事板" forState:UIControlStateNormal];              //定义button名字以及定义按钮的文字或图片在何种状态下才会显现
    btnToSB.adjustsImageWhenHighlighted = YES;                              //当该属性值为yes时，按钮按下会发光
    [btnToSB addTarget:self action:@selector(btnToSBClick) forControlEvents:UIControlEventTouchUpInside];
    
    //跳转到xib按钮
    UIButton *btnToXib = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btnToXib];
    btnToXib.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2-50, 300, 100, 50);
    btnToXib.backgroundColor = [UIColor lightGrayColor];
    [btnToXib setTitle:@"Xib" forState:UIControlStateNormal];
    btnToXib.adjustsImageWhenHighlighted = YES;
    [btnToXib addTarget:self action:@selector(btnToXibClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    //跳转到纯代码界面按钮
    UIButton *btnToCode = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btnToCode];
    btnToCode.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2-50, 400, 100, 50);
    btnToCode.backgroundColor = [UIColor lightGrayColor];
    [btnToCode setTitle:@"Code" forState:UIControlStateNormal];
    btnToCode.adjustsImageWhenHighlighted = YES;
    [btnToCode addTarget:self action:@selector(btnToCodeClick) forControlEvents:UIControlEventTouchUpInside];
    
    _textField = [[UITextField alloc] init];
    [self.view addSubview:_textField];
    _textField.frame = CGRectMake(20, 100,CGRectGetWidth(self.view.bounds)-40, 30);
    _textField.placeholder = @"属性传值~";                                    //水印
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.layer.borderColor = [UIColor grayColor].CGColor;             //边框颜色
    _textField.layer.borderWidth =0.5f;                                     //边框大小
}

-(void)btnToSBClick
{
    secendViewController *sss = [[secendViewController alloc] init];
    sss.textString =  self.textField.text;
    [self presentViewController:sss animated:YES completion:nil];           //跳转至sss所在的类界面
}

-(void)btnToXibClick
{
    xibViewController *sss = [[xibViewController alloc] init];
    sss.textString =  self.textField.text;
    [self presentViewController:sss animated:YES completion:nil];
}

-(void)btnToCodeClick
{
    codeViewController *sss = [[codeViewController alloc] init];
    sss.textString =  self.textField.text;
    [self presentViewController:sss animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
