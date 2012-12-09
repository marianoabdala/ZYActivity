//
//  ZYMyActivity.m
//  SampleProject
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//

#import "ZYMyActivity.h"
#import "ZYHelloViewController.h"

@interface ZYMyActivity ()

@property (strong, nonatomic) ZYHelloViewController *helloViewController;

@end

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

    if (self.helloViewController == nil) {
        
        self.helloViewController =
        [[ZYHelloViewController alloc] initWithNibName:@"ZYHelloViewController"
                                                bundle:nil];
        
        self.helloViewController.activity = self;
    }

    return self.helloViewController;
}


@end
