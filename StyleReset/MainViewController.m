//
//  MainViewController.m
//  StyleReset
//
//  Created by user on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

#pragma mark - Flipside View Controller

- (IBAction)showInfo:(id)sender
{
    UIAlertView *alert;
    alert = [[UIAlertView alloc] initWithTitle:@"About" message:@"StyleTap trial reseter 1.0\nCopyright 2012 ioshomebrew" delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)resetTrial:(id)sender
{
    system("rm /Applications/StyleTap.app/db/msstceews4.dylib");
    UIAlertView *alert;
    alert = [[UIAlertView alloc] initWithTitle:@"Successful" message:@"Your styletap trial has been reset!" delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil, nil];
    [alert show];
}

@end
