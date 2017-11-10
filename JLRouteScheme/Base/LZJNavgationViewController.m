//
//  LZJNavgationViewController.m
//
//  Created by lizhaojie on 16/5/23.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "LZJNavgationViewController.h"
#import "LZJMacro.h"
@interface LZJNavgationViewController ()

@end

#define CTNAVGATION_HimageName @"navHigh_bg.png"
#define CTNAVGATION_ImageName @"nav_bg.png"

@implementation LZJNavgationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        
        [self.navigationBar setBackgroundImage:[UIImage imageNamed:CTNAVGATION_HimageName] forBarMetrics:UIBarMetricsDefault];
        
    }
    else{
        
        [self.navigationBar  setBackgroundImage:[UIImage imageNamed:CTNAVGATION_ImageName] forBarMetrics:UIBarMetricsDefault];
    }

    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
