//
//  ViewController.m
//  JLRouteScheme
//
//  Created by lizhaojie on 16/11/29.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)skip:(id)sender {
    [ self presentViewController:[[FirstViewController alloc] init]  animated:YES completion:^{
        
    }];
}
@end
