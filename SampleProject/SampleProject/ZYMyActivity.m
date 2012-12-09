//
//  ZYMyActivity.m
//  SampleProject
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//

#import "ZYMyActivity.h"
#import "ZYHelloViewController.h"

@implementation ZYMyActivity

#pragma mark - Hierarchy
#pragma mark UIActivity
- (NSString *)activityTitle {
    
    return NSLocalizedString(@"Activity", @"");
}

- (UIImage *)activityImage {
    
    UIImage *activityImage =
    UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ?
    [UIImage imageNamed:@"activity"] :
    [UIImage imageNamed:@"activity-ipad"];
    
    return activityImage;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    
    return YES;
}

#pragma mark ZYActivity
- (UIViewController *)performWithActivityItems:(NSArray *)activityItems {

    ZYHelloViewController *helloViewController =
    [[ZYHelloViewController alloc] initWithNibName:@"ZYHelloViewController"
                                            bundle:nil];
        
    helloViewController.activity = self;

    return helloViewController;
}


@end
