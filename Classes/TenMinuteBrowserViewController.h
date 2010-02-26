//
//  TenMinuteBrowserViewController.h
//  TenMinuteBrowser
//
//  Created by Steve Baker on 2/25/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TenMinuteBrowserViewController : UIViewController 
<UITextFieldDelegate, UIWebViewDelegate> {
    UITextField *urlField;
    UIWebView *webView;
    UIActivityIndicatorView *activityIndicator;
}
#pragma mark properties
@property(nonatomic,retain)IBOutlet UITextField *urlField;
@property(nonatomic,retain)IBOutlet UIWebView *webView;
@property(nonatomic,retain)IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)handleGoTapped;
- (IBAction)handleGoBack;
- (IBAction)handleGoForward;

@end

