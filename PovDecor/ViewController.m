//
//  ViewController.m
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doCameraBth:(id)sender {
    UIImagePickerController *ipController = [[UIImagePickerController alloc]init];
    if ([[[UIDevice currentDevice]model]rangeOfString:@"Sim"].location == NSNotFound) {
        [ipController setSourceType:UIImagePickerControllerSourceTypeCamera];
        [ipController setDelegate:self];
        [self presentModalViewController:ipController animated:YES];
        
    }
}

- (IBAction)doPhotoAlbumBth:(id)sender {
    UIImagePickerController *ipController = [[UIImagePickerController alloc]init];
    [ipController setDelegate:self];
    [self presentModalViewController:ipController animated:YES];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    [self dismissModalViewControllerAnimated:NO];
    UIImage *i = [info objectForKey:UIImagePickerControllerOriginalImage];
    [vcImageEditing setEditImage:i];
    [self presentModalViewController:vcImageEditing animated:YES];
    
}
@end
