//
//  AppDelegate.m
//  JLRouteScheme
//
//  Created by lizhaojie on 16/11/29.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import "AppDelegate.h"
#import "LZJTabBarViewController.h"
#import "FirstNextViewController.h"
#import "FirstViewController.h"
#import <JLRoutes.h>
#import "AppDelegate+RegisterRoute.h"
@interface AppDelegate ()
@property (nonatomic, strong) UINavigationController *navVC;
@property (nonatomic,strong) LZJTabBarViewController *tab;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    LZJTabBarViewController *tab = [[LZJTabBarViewController alloc] init];
    self.tab = tab;
    self.window.rootViewController = tab;
  
    [self.window makeKeyAndVisible];
    
    [self registerRoute];
    
   
    // Override point for customization after application launch.
    return YES;
}

- (void)registerRoute{
    
    [self registerRouteWithScheme:@"RouteOne"];
    
}
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options{
//    NSString *str = url.absoluteString;
//    NSArray *arr = [str componentsSeparatedByString:@"://"];
    
//    if ([[arr.firstObject lowercaseString] isEqualToString:@"routeone"]) {

        return [[JLRoutes routesForScheme:@"RouteOne"]routeURL:url];
        
//    }
//    else if ([[arr.firstObject lowercaseString] isEqualToString:@"routetwo"]){
//        
//        return [[JLRoutes routesForScheme:@"RouteTwo"]routeURL:url];
//    }else if([[arr.firstObject lowercaseString] isEqualToString:@"routethree"]){
//        
//        return [[JLRoutes routesForScheme:@"RouteThree"]routeURL:url];
//
//    }
  
//    return  [[JLRoutes routesForScheme:@"JLRouteDemoTest"] routeURL:url];
    

 
//    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
