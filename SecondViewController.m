//
//  SecondViewController.m
//  FisrtStepRSS
//
//  Created by Admin on 25/10/2012.
//  Copyright (c) 2012 Vadim Glushko. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()


@end

@implementation SecondViewController
@synthesize url;
@synthesize browser;

-(id)initwithurl:(NSString *)text
{
    url = [NSURL URLWithString:text];
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    browser = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [browser loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:browser];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
