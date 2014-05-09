//
//  VCDecorations.m
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import "VCDecorations.h"

@interface VCDecorations ()

@end

@implementation VCDecorations
@synthesize selectedImage;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)doImageBth:(id)sender
{
    selectedImage =[sender backgroundImageForState:UIControlStateNormal];
    [self dismissModalViewControllerAnimated:YES];
    
}
-(IBAction)doCancelBth:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}
@end

