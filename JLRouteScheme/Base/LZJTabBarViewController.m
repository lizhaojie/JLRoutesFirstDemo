//
//  LZJTabBarViewController.m
//
//  Created by lizhaojie on 16/5/23.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "LZJTabBarViewController.h"
#import "LZJNavgationViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "LZJMacro.h"
#import <Masonry.h>


#define TABBARVIEW_FIRSTITEMBTTAG 0
#define TABBAR_HomeItem_NormalImg @"index_0"
#define TABBAR_HomeItem_SelectImg @"index_1"
#define TABBAR_HistoryItem_NormalImg @"history_0"
#define TABBAR_HistoryItem_SelectImg @"history_1"
#define TABBAR_NewsItem_NormalImg @"news_0"
#define TABBAR_NewsItem_SelectImg @"news_1"
#define TABBAR_HomeItem_Title @"First"
#define TABBAR_HistoryItem_Title @"second"
#define TABBAR_NewsItem_Title @"three"


@interface LZJTabBarViewController ()
{
    
}

@end

@implementation LZJTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColorFromRGB(BGCOLOR);
    [self loadControllers];

}

//window下面是navigationController，在隐藏tablebar时比较灵活
- (void)loadControllers{
    
    UINavigationController *nav = [self viewControllerWithTitle:TABBAR_HomeItem_Title image:[UIImage imageNamed:TABBAR_HomeItem_NormalImg] selectImage:[UIImage imageNamed:TABBAR_HomeItem_SelectImg] VC:[[FirstViewController alloc] init ]];
//    [self addRoute];
    
    UINavigationController *nav1 = [self viewControllerWithTitle:TABBAR_HistoryItem_Title image:[UIImage imageNamed:TABBAR_HistoryItem_NormalImg] selectImage:[UIImage imageNamed:TABBAR_HistoryItem_SelectImg] VC:[[SecondViewController alloc] init ]];
//    [self addRoute];
    
    UINavigationController *nav2 = [self viewControllerWithTitle:TABBAR_NewsItem_Title image:[UIImage imageNamed:TABBAR_NewsItem_NormalImg] selectImage:[UIImage imageNamed:TABBAR_NewsItem_SelectImg] VC:[[ThirdViewController alloc] init ]];
//    [self addRoute];
    
    [self addRoute];
    NSArray *viewControllers = [[NSArray alloc]initWithObjects:nav,nav1,nav2, nil];
    [self setViewControllers:viewControllers animated:NO];
    

}
//注册：外部跳转，呈现tab里的内容
- (void)addRoute{
    __weak typeof(self) weakSelf = self;
    [[JLRoutes routesForScheme:@"RouteOne"]addRoute:@"/:tab1" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        
        LZJNavgationViewController *nav = nil;
        NSString *className = parameters[@"tab1"];
        if ([className isEqualToString:NSStringFromClass([FirstViewController class])]) {
             nav = [self creatNavWithClassString:parameters[@"tab1"] params:[NSDictionary dictionaryWithObjectsAndKeys:TABBAR_HomeItem_Title,@"title",TABBAR_HomeItem_NormalImg,@"norImageName",TABBAR_HomeItem_SelectImg,@"selectImageName", nil]];
            self.selectedIndex = 0;
        }else if([className isEqualToString:NSStringFromClass([SecondViewController class])]){
             nav = [self creatNavWithClassString:parameters[@"tab1"] params:[NSDictionary dictionaryWithObjectsAndKeys:TABBAR_HistoryItem_Title,@"title",TABBAR_HistoryItem_NormalImg,@"norImageName",TABBAR_HistoryItem_SelectImg,@"selectImageName", nil]];
            self.selectedIndex = 1;
        }else{
              nav = [self creatNavWithClassString:parameters[@"tab1"]params:[NSDictionary dictionaryWithObjectsAndKeys:TABBAR_NewsItem_Title,@"title",TABBAR_NewsItem_NormalImg,@"norImageName",TABBAR_NewsItem_SelectImg,@"selectImageName", nil]];
            self.selectedIndex = 2;
        }
        NSMutableArray *navs = [NSMutableArray arrayWithArray:weakSelf.viewControllers];
        [navs replaceObjectAtIndex:self.selectedIndex withObject:nav];
        self.viewControllers = navs;
        return YES;
    }];
}

-(LZJNavgationViewController *) viewControllerWithTitle:(NSString *) title image:(UIImage *)image selectImage:(UIImage *)selectImage VC:(UIViewController *)VC{
    VC.tabBarItem.image = image;
    VC.tabBarItem.selectedImage = selectImage;
    VC.title = title ;
    VC.tabBarItem.title = title;
    LZJNavgationViewController *nav = [[LZJNavgationViewController alloc] initWithRootViewController:VC];
    return nav;
}
- (LZJNavgationViewController*)creatNavWithClassString:(NSString*)className params:(NSDictionary *)params{
    Class class1 =  NSClassFromString(className);
    UIViewController *vc1 = [[class1 alloc] init];
    LZJNavgationViewController *nav = [self viewControllerWithTitle:params[@"title"] image:[UIImage imageNamed:params[@"norImageName"]] selectImage:[UIImage imageNamed:params[@"selectImageName"]] VC:vc1];
    return nav;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
