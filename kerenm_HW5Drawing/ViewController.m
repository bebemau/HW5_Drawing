//
//  ViewController.m
//  kerenm_HW5Drawing
//
//  Created by Man, Keren on 2/16/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (IBAction)btnRefreshGraph_Clicked:(id)sender {
    [[self viewGraph] setNeedsDisplay:YES];
}

@end
