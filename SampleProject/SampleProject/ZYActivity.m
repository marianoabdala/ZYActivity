//
//  ZYNiceActivity.m
//  ZYActivity
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//

#import "ZYActivity.h"

@interface ZYActivity ()

@property (copy, nonatomic) NSArray *activityItems;
@property (assign, nonatomic, getter = isSilent) BOOL silent;

@end

@implementation ZYActivity

#pragma mark - Hierarchy
#pragma mark UIActivity
- (NSString *)activityType {

    NSString *bundleIdentifier =
    [[NSBundle mainBundle] bundleIdentifier];
    
    NSString *activityClassName =
    [[self class] description];
    
    NSString *activityType =
    [NSString stringWithFormat:@"%@.%@",
     bundleIdentifier,
     activityClassName];
    
    return activityType;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
 
    self.activityItems = activityItems;
}

- (UIViewController *)activityViewController {

    UIViewController *activityViewController = nil;
    
    if (self.isSilent == NO) {

        activityViewController =
        [self performWithActivityItems:self.activityItems];

        self.silent =
        activityViewController == nil;
    }
    
    return activityViewController;
}

#pragma mark - Self
#pragma mark ZYActivity
- (UIViewController *)performWithActivityItems:(NSArray *)activityItems {
    
    return nil;
}

@end
