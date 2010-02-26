//
//  TenMinuteBrowserAppDelegate.m
//  TenMinuteBrowser
//
//  Created by Steve Baker on 2/25/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "TenMinuteBrowserAppDelegate.h"
#import "TenMinuteBrowserViewController.h"

@implementation TenMinuteBrowserAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
