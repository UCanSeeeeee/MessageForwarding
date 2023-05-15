//
//  AppDelegate.m
//  MessageForwardingDemo
//
//  Created by 王杰 on 2023/5/15.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame: [UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor blackColor];
    ViewController *rootViewController = [[ViewController alloc] init];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
