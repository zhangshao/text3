//
//  VCImageEditing.m
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import "VCImageEditing.h"
#import "MovableImageView.h"
@interface VCImageEditing ()

@end

@implementation VCImageEditing
@synthesize editImage;
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
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (editImage != nil)
    {
        [ivEditingImage setImage:editImage];
        [self.view sendSubviewToBack:ivEditingImage]; }
    if (selectingImage)
    {
        MovableImageView *iv =
        [[MovableImageView alloc]initWithImage:[vcDecorations selectedImage]];
        [iv setUserInteractionEnabled:YES];
        [self.view addSubview:iv];
    }
    selectingImage = NO;
    
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (!statedUp)
        if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
            [self do PhotoAlbumBtn:nil];
    startedUp = YES;
    
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissModalViewControllerAnimated:YES];
    
}
-(UIImage *)saveImage:(UIView *)view{
    CGRect mainRect = [[UIScreen mainScreen]bounds];
    UIGraphicsBeginImageContext(mainRect.size);
    CGContextRef context = UIGraphicsBeginImageContext（）;
    [[UIColor blackColor] set];
    CGContextFillRect(context, mainRect);
    [view.layer renderInContext:context];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //创建一个图片
    UIGraphicsEndImageContext(); return newImage;
    [[MFMailComposeViewController alloc] init];
    mailController.mailComposeDelegate = self;
    //隐藏toolbar
    for (UIView *v in [self.view subviews]) if ([v isKindOfClass:[UIToolbar class]]) [v setHidden:YES];
    UIImage *i = [self saveImage:self.view];
    //获取图片
    for (UIView *v in [self.view subviews])
        if ([v isKindOfClass:[UIToolbar class]])
            [v setHidden:NO];
    NSData *imageAsData = UIImagePNGRepresentation(i); [mailController addAttachmentData:imageAsData
                                                        //添加图片电邮
                                                                                mimeType:@"image/png" fileName:@"PicDecor.png"]; [mailController setSubject:@"My PicDecor Image"];
    [self presentModalViewController:mailController animated:YES];

}

+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;
{
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)]; UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext(); UIGraphicsEndImageContext();
    return newImage; }
-(IBAction)doDecorateBtn:(id)sender{
    seletingImage = YES;
    [self presentModalViewController:vcDecorations animate:YES]；
    
}
- (IBAction)doEmailBtn:(id)sender {
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc] init];
    mailController.mailComposeDelegate = self;
    or (UIView *v in [self.view subviews]) if ([v isKindOfClass:[UIToolbar class]]) [v setHidden:YES];
    UIImage *i = [self saveImage:self.view];
    //获取图片
    for (UIView *v in [self.view subviews])
        if ([v isKindOfClass:[UIToolbar class]])
            [v setHidden:NO];
    NSData *imageAsData = UIImagePNGRepresentation(i); [mailController addAttachmentData:imageAsData
                                                        //添加图片电邮
                                                                                mimeType:@"image/png" fileName:@"PicDecor.png"]; [mailController setSubject:@"My PicDecor Image"];
    [self presentModalViewController:mailController animated:YES];
}


@end
