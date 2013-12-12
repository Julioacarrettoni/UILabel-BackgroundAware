//
//  UILabel+BackgroundAware.m
//  SmartUILabel
//
//  Created by Julio Carrettoni on 12/12/13.
//  Copyright (c) 2013 Julio Carrettoni. All rights reserved.
//

#import "UILabel+BackgroundAware.h"
#import "UIImage+AverageColor.h"

@implementation UILabel(BackgroundAware)

- (void) changeTextColorToUnmatchTheBG {
    if (!self.window)
        return;
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 1);
    if (!UIGraphicsGetCurrentContext())
        return;
    
    NSString* auxText = self.text;
    self.text = nil;
    CGRect frame = self.window.bounds;
    CGPoint origin = [self.window convertPoint:self.frame.origin fromView:self.superview];
    frame.origin.x = -origin.x;
    frame.origin.y = -origin.y;
    [self.window drawViewHierarchyInRect:frame afterScreenUpdates:YES];
    UIImage *snapshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIColor* newColor = [snapshot averageColor];
    
    const CGFloat *componentColors = CGColorGetComponents(newColor.CGColor);
    
    CGFloat colorBrightness = ((componentColors[0] * 299) + (componentColors[1] * 587) + (componentColors[2] * 114)) / 1000;
    if (colorBrightness < 0.6) {
        newColor = [UIColor whiteColor];
    }
    else {
        newColor = [UIColor blackColor];
    }
    
    [self setTextColor:newColor];
    
    self.text = auxText;
}

@end
