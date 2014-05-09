//
//  MovableImageView.m
//  PovDecor
//
//  Created by 林小露 on 14-5-9.
//  Copyright (c) 2014年 林小露. All rights reserved.
//

#import "MovableImageView.h"

@implementation MovableImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
}
-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    float deltaX = [[touches anyObject] locationInView:self].x
    - [[touches anyObject] previousLocationInView:self].x;
    float deltaY = [[touches anyObject] locationInView:self].y
    - [[touches anyObject] previousLocationInView:self].y;
    self.transform = CGAffineTransformTranslate(self.transform,deltaX, deltaY); }
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
