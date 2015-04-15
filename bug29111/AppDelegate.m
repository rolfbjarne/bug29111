//
//  AppDelegate.m
//  bug29111
//
//  Created by Rolf Bjarne Kvinge on 15/04/15.
//  Copyright (c) 2015 Rolf Bjarne Kvinge. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[BugViewController alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
