//
//  TenMinuteBrowserAppDelegate.h
//  TenMinuteBrowser
//
//  Created by Steve Baker on 2/25/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TenMinuteBrowserViewController;

@interface TenMinuteBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TenMinuteBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TenMinuteBrowserViewController *viewController;

@end

