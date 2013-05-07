//
//  TDSemiModalViewController.m
//  TDSemiModal
//
//  Created by Nathan  Reed on 18/10/10.
//  Copyright 2010 Nathan Reed. All rights reserved.
//

#import "TDSemiModalViewController.h"

@implementation TDSemiModalViewController
@synthesize coverView;

-(void)viewDidLoad {
    self.coverViewAlpha = 0.7;
    self.animationDuration = 0.6;
    self.animationDelay = 0.7;
    
    [super viewDidLoad];
    
	self.coverView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];

	self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

	coverView.backgroundColor = UIColor.blackColor;
	self.coverView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    [self.view addGestureRecognizer:[[UIPanGestureRecognizer alloc] init]]; // add non-working pan gesture recognizer to cancel keep MFSideMenu from panning
}

#pragma mark -
#pragma mark Memory Management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.coverView = nil;
}

@end
