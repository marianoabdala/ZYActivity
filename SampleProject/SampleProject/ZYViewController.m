//
//  ZYViewController.m
//  SampleProject
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//

#import "ZYViewController.h"
#import "ZYMyActivity.h"
#import "ZYMySilentActivity.h"

@interface ZYViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *goButton;
@property (strong, nonatomic) UIPopoverController *popover;

- (IBAction)goButtonTapped:(id)sender;

@end

@implementation ZYViewController

- (IBAction)goButtonTapped:(id)sender {
    
    NSArray *activityItems =
    @[ @"Hi!" ];
    
    NSArray *applicationActivities =
    @[
        [[ZYMyActivity alloc] init],
        [[ZYMySilentActivity alloc] init]
    ];
    
    UIActivityViewController *activityViewController =
    [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                      applicationActivities:applicationActivities];
    
    activityViewController.excludedActivityTypes =
    @[
        UIActivityTypePostToFacebook,
        UIActivityTypePostToTwitter,
        UIActivityTypePostToWeibo,
        UIActivityTypeMessage,
        UIActivityTypeMail,
        UIActivityTypePrint,
        UIActivityTypeCopyToPasteboard,
        UIActivityTypeAssignToContact,
        UIActivityTypeSaveToCameraRoll
    ];
    
    BOOL isRunningOniPhone =
    UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone;
    
    if (isRunningOniPhone == YES) {

        [self presentViewController:activityViewController
                           animated:YES
                         completion:nil];
        
    } else { //isRunnningOniPad
        
        self.popover =
        [[UIPopoverController alloc] initWithContentViewController:activityViewController];
        
        [self.popover presentPopoverFromBarButtonItem:self.goButton
                             permittedArrowDirections:UIPopoverArrowDirectionAny
                                             animated:YES];
    }
}

@end
