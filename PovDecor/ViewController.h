//
//  ViewController.h
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCImageEditing.h"
#import "VCDecorations.h"
@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    IBOutlet VCImageEditing *vcImageEditing;
}
- (IBAction)doCameraBth:(id)sender;

- (IBAction)doPhotoAlbumBth:(id)sender;
@end
