//
//  AppDelegate.m
//  WhalePaySDK
//
//  Created by 李勇 on 2017/3/2.
//  Copyright © 2017年 liyong. All rights reserved.
//

#import "AppDelegate.h"
#import "WhalePayViewController.h"

#define WECHAT_PAY_KEY @"wx42967af88ec99501"
#define ALI_PAY_SCHEMEL @"AliPay20170313"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //向金融平台注册appID
    [[WhalePayViewController sharedInstance] setAppId:@{
                                                     @"appkey" : @"5ew28qukblY8r6n9P3BG",
                                                     @"appsecret" : @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f",
                                                     @"wxAppid" : WECHAT_PAY_KEY,
                                                     @"aliSchemel" : ALI_PAY_SCHEMEL
                                                     }];
    
    return YES;
}

//iOS 9以下的回调
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    
    NSString *urlStr = [url absoluteString];
    if ([urlStr hasPrefix:WECHAT_PAY_KEY] || [url.host isEqualToString:@"platformapi"] || [url.host isEqualToString:@"safepay"]){
        return [[WhalePayViewController sharedInstance] handleOpenURL:url withCompletion:nil];
    }
    return YES;
}

//iOS 9以上的回调
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options{
    
    NSString *urlStr = [url absoluteString];
    if ([urlStr hasPrefix:WECHAT_PAY_KEY] || [url.host isEqualToString:@"platformapi"] || [url.host isEqualToString:@"safepay"]){
        return [[WhalePayViewController sharedInstance] handleOpenURL:url withCompletion:nil];
    }
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
