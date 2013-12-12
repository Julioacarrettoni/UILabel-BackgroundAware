//
//  MainViewController.m
//  SmartUILabel
//
//  Created by Julio Carrettoni on 12/12/13.
//  Copyright (c) 2013 Julio Carrettoni. All rights reserved.
//

#import "MainViewController.h"
#import "UILabel+BackgroundAware.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    for (UILabel* label in labels) {
        [label changeTextColorToUnmatchTheBG];
    }
}
@end
