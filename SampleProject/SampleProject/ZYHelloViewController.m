//
//  ZYHelloViewController.m
//  SampleProject
//
//  Created by Mariano Abdala on 12/3/12.
//  Copyright (c) 2012 zerously. All rights reserved.
//

#import "ZYHelloViewController.h"

@interface ZYHelloViewController ()

- (IBAction)doneButtonTapped;

@end

@implementation ZYHelloViewController

- (IBAction)doneButtonTapped {

    [self.activity activityDidFinish:YES];
}

@end
