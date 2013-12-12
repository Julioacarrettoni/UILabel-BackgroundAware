//
//  MainViewController.h
//  SmartUILabel
//
//  Created by Julio Carrettoni on 12/12/13.
//  Copyright (c) 2013 Julio Carrettoni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController {
    IBOutletCollection(UILabel) NSArray *labels;
}
@end
