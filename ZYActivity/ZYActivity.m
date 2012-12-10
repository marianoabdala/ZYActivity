//
//  ZYNiceActivity.m
//  ZYActivity
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//
//  https://github.com/marianoabdala/ZYActivity
//

#import "ZYActivity.h"

@interface ZYActivity ()

@property (copy, nonatomic) NSArray *activityItems;
@property (strong, nonatomic) UIViewController *viewController;

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

    if (self.isSilent == NO &&
        self.viewController == nil) {

        self.viewController =
        [self performWithActivityItems:self.activityItems];

        self.silent =
        self.viewController == nil;
    }
    
    return self.viewController;
}

#pragma mark - Self
#pragma mark ZYActivity
- (UIViewController *)performWithActivityItems:(NSArray *)activityItems {
    
    return nil;
}

@end
