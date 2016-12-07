//
//  SecondViewController.m
//  JLRouteScheme
//
//  Created by lizhaojie on 16/11/30.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "SecondViewController.h"
#import <Masonry.h>
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.title = @"Second";
    self.view.backgroundColor = [UIColor blueColor];
    [self addBtn];
    // Do any additional setup after loading the view.
}
- (void)addBtn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(40);
    }];
    [btn addTarget:self action:@selector(skipNext) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)skipNext{
    NSString *url = @"RouteOne://push/FirstNextViewController?titleText=fromSecond";
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url]];
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
