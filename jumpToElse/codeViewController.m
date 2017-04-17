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
    backToSB.frame = CGRectMake(100, 100, 100, 50);
    backToSB.backgroundColor = [UIColor redColor];
    [backToSB setTitle:@"let me back" forState:UIControlStateNormal];
    backToSB.adjustsImageWhenHighlighted = YES;
    [backToSB addTarget:self action:@selector(backToSBClick)forControlEvents:UIControlEventTouchUpInside];
}

-(void)backToSBClick
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *mainVC = [sb instantiateViewControllerWithIdentifier:@"mainSB"];
    [self presentViewController:mainVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
