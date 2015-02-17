//
//  ViewController.h
//  kerenm_HW5Drawing
//
//  Created by Man, Keren on 2/16/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GraphView.h"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSButton *btnRefreshGraph;
@property (weak) IBOutlet GraphView *viewGraph;

@end

