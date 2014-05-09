//
//  VCDecorations.h
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCDecorations : UIViewController
{
    UIImage *selectedImage;
}
@property (nonatomic,retain)UIImage *selectedImage;
-(IBAction)doImageBth:(id)sender;
-(IBAction)doCancelBth:(id)sender;


@end
