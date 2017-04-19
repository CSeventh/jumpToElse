//
//  codeViewController.m
//  jumpToElse
//
//  Created by user on 2017/4/16.
//  Copyright © 2017年 user. All rights reserved.
//

#import "codeViewController.h"
#import "ViewController.h"

@interface codeViewController ()

@end

@implementation codeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *backToSB = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:backToSB];
    backToSB.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2-50, 200, 100, 50);
    [backToSB setTitle:@"let me back" forState:UIControlStateNormal];
    backToSB.adjustsImageWhenHighlighted = YES;
    [backToSB addTarget:self action:@selector(backToSBClick)forControlEvents:UIControlEventTouchUpInside];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100,CGRectGetWidth(self.view.bounds)-40, 30)];
    [self.view addSubview:label];
    label.textAlignment = NSTextAlignmentLeft;
    label.backgroundColor = [UIColor whiteColor];
    label.textColor = [UIColor blackColor];
    label.text =_textString;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)backToSBClick
{
    [self dismissViewControllerAnimated:YES completion:nil];    //返回上个界面
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
