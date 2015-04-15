//
//  ViewController.m
//  bug29111
//
//  Created by Rolf Bjarne Kvinge on 15/04/15.
//  Copyright (c) 2015 Rolf Bjarne Kvinge. All rights reserved.
//

#import "ViewController.h"

static BugViewController *_modal;

@implementation BugViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.is_modal) {
        UIButton *blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [blueButton setTitle: @"Close" forState:UIControlStateNormal];
        [blueButton setBackgroundColor: [UIColor whiteColor]];
        blueButton.frame = CGRectMake (100, 100, 100, 50);
        [blueButton addTarget:self action:@selector(dismissBlue) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview: blueButton];
    } else {
        UIButton *redButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        [redButton setTitle: @"Show FlipHorizontal FormSheet" forState: UIControlStateNormal];
        [redButton setBackgroundColor: [UIColor redColor]];
        redButton.frame = CGRectMake (100, 200, 300, 50);
        [redButton addTarget:self action:@selector(dismissRed) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview: redButton];
    }
}

- (void) dismissBlue
{
    [_modal dismissViewControllerAnimated:YES completion:nil];
}

- (void) dismissRed
{
    _modal = [[BugViewController alloc] init];
    _modal.is_modal = YES;
    _modal.modalPresentationStyle = UIModalPresentationFormSheet;
    _modal.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController: _modal animated:YES completion:nil];
}

@end
