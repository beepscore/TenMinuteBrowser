//
//  TenMinuteBrowserViewController.m
//  TenMinuteBrowser
//
//  Created by Steve Baker on 2/25/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "TenMinuteBrowserViewController.h"

@implementation TenMinuteBrowserViewController

#pragma mark properties
@synthesize urlField;
@synthesize webView;



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)loadURL {
    NSURL *url = [[NSURL alloc] initWithString:urlField.text];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
    [request release];
    [url release];
}

- (IBAction)handleGoTapped {
    [self.urlField resignFirstResponder];
    [self loadURL];
}

// called when user presses return key
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.urlField) {
        [self handleGoTapped];
    }
    return YES;
}

- (IBAction)handleGoBack {
    [self.webView goBack];    
}

- (IBAction)handleGoForward {
    [self.webView goForward];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)setView:(UIView *)newView
{
    if (nil == newView) {
        self.urlField = nil;
        self.webView = nil;
    }    
    [super setView:newView];
}


- (void)dealloc {
    [urlField release], urlField = nil;
    [webView release], webView = nil;

    [super dealloc];
}

@end
