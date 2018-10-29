//
//  FirstNextViewController.m
//  JLRouteScheme
//
//  Created by lizhaojie on 16/11/30.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "FirstNextViewController.h"
//#import "UIViewController+RegisterRoute.h"
#import <JLRoutes.h>
#import "ModelOne.h"
@interface FirstNextViewController ()

@end

@implementation FirstNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.titleText;
    NSLog(@"name == %@", self.name);
//    [self registerRouteWithScheme:@"RouteOne" className:@"FirstNextNextViewController"];

    self.view.backgroundColor = [UIColor redColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"next" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(0, 0, 80, 30)];;
    [btn addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    
    // Do any additional setup after loading the view.
}

- (void)next:(id)sender{
    /*
     
     传不了对象，get网址是有长度限制的
     */
//    ModelOne *model = [[ModelOne alloc] init];
//    model.name = @"fromNextVC";
//    NSString *url = [NSString stringWithFormat:@"RouteOne://push/FirstNextNextViewController?name=%@",model];
        NSString *url = [NSString stringWithFormat:@"RouteOne://push/FirstNextNextViewController?name=%@",@"fromNextVC"];

    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url]];
    
//    [[JLRoutes globalRoutes]routeURL:[NSURL URLWithString:@"RouteOne://push/FirstNextNextViewController"] withParameters:[NSDictionary dictionaryWithObjectsAndKeys:@"fromeNext",@"name", nil]];
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
