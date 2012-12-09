//
//  ZYMySilentActivity.m
//  SampleProject
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//

#import "ZYMySilentActivity.h"

@implementation ZYMySilentActivity

#pragma mark - Hierarchy
#pragma mark UIActivity
- (NSString *)activityTitle {
    
    return NSLocalizedString(@"Silent Activity", @"");
}

- (UIImage *)activityImage {
    
    UIImage *activityImage =
    UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ?
    [UIImage imageNamed:@"silent-activity"] :
    [UIImage imageNamed:@"silent-activity-ipad"];
    
    return activityImage;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    
    return YES;
}

#pragma mark ZYActivity
- (UIViewController *)performWithActivityItems:(NSArray *)activityItems {
    
    NSOperationQueue *backgroundQueue =
    [[NSOperationQueue alloc] init];
    
    [backgroundQueue addOperationWithBlock:^{
        
        NSLog(@"My activity has begun!", nil);
        
        sleep(3);
        
        NSLog(@"My activity has ended!", nil);
        
        [self activityDidFinish:YES];
    }];
    
    return nil;
}

@end
