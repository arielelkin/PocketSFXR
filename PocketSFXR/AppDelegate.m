//
//  AppDelegate.m
//  PocketSFXR
//
//  Created by Ariel Elkin on 25/06/2014.
//  Copyright (c) 2014 Ariel. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    ViewController *viewController = [ViewController new];
    [self.window setRootViewController:viewController];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
