//
//  VCImageEditing.h
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCDecorations.h"
#import <MessageUI/MessageUI.h>
#import <QuartzCore/QuartzCore.h>
#import "MovableImageView.h"
@interface VCImageEditing : UIViewController<MFMailComposeViewControllerDelegate>
{
    IBOutlet UIImageView *ivEditingImage;
    UIImage *editImage;
    bool selectingImage;
    IBOutlet VCDecorations *vcDecorations;
    

}
-(IBAction)doDecorateBtn:(id)sender;

- (IBAction)doEmailBtn:(id)sender;

@property (nonatomic,retain)UIImage *editImage;

@end
