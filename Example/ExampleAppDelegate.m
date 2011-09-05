//
//  ExampleAppDelegate.m
//  Example
//
//  Created by Aaron Brethorst on 9/4/11.
//  Copyright 2011 Structlab LLC. All rights reserved.
//

#import "ExampleAppDelegate.h"
#import "RootViewController.h"
#import "PhotoListViewController.h"
#import "PhotoViewController.h"
#import "AlbumListViewController.h"
#import "PhotoListViewController.h"

@implementation ExampleAppDelegate

@synthesize window = _window;
@synthesize rootViewController, navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[ABRouter sharedRouter] registerURLPattern:@"/photos" forViewControllerClass:[PhotoListViewController class]];
    [[ABRouter sharedRouter] registerURLPattern:@"/photos/:id" forViewControllerClass:[PhotoViewController class]];
    [[ABRouter sharedRouter] registerURLPattern:@"/albums" forViewControllerClass:[AlbumListViewController class]];
    [[ABRouter sharedRouter] registerURLPattern:@"/albums/:id" forViewControllerClass:[PhotoListViewController class]];
    [[ABRouter sharedRouter] registerURLPattern:@"/albums/:album_id/photos/:id" forViewControllerClass:[PhotoViewController class]];
    
    self.rootViewController = [[[RootViewController alloc] init] autorelease];
    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:self.rootViewController] autorelease];
    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
