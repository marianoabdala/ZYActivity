//
//  ZYActivity.h
//  ZYActivity
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//
//  https://github.com/marianoabdala/ZYActivity
//

#import <UIKit/UIKit.h>

@interface ZYActivity : UIActivity

//Replaces prepeareWithActivityItems:, performActivity and activityViewController.
//If the action doesn't require to present a UIViewController return nil.
- (UIViewController *)performWithActivityItems:(NSArray *)activityItems;

@end
