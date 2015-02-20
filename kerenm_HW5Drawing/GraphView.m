//
//  GraphView.m
//  kerenm_HW5Drawing
//
//  Created by Man, Keren on 2/16/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "GraphView.h"
#import "RandomPercentGenerator.h"

IB_DESIGNABLE
@implementation GraphView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [self DrawLineGraph];

}

-(void)DrawLineGraph{
    RandomPercentGenerator *randomPercents = [[RandomPercentGenerator  alloc]init];
    NSArray *percentArray = [randomPercents arrayOfPercents:10];
    //NSLog(@"%lu", (unsigned long)percentArray.count);
    NSNumber *valueAtZero = [percentArray objectAtIndex: 0];
    NSNumber *valueAtOne = [percentArray objectAtIndex: 1];
    NSNumber *valueAtTwo = [percentArray objectAtIndex: 2];
    NSNumber *valueAtThree = [percentArray objectAtIndex: 3];
    NSNumber *valueAtFour = [percentArray objectAtIndex: 4];
    NSNumber *valueAtFive = [percentArray objectAtIndex: 5];
    NSNumber *valueAtSix = [percentArray objectAtIndex: 6];
    NSNumber *valueAtSeven = [percentArray objectAtIndex: 7];
    NSNumber *valueAtEight = [percentArray objectAtIndex: 8];
    NSNumber *valueAtNine = [percentArray objectAtIndex: 9];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    float bigNumber = 200;
    float increment =self.bounds.size.width/11;
    
    [path moveToPoint:CGPointMake(0,0)];
    [path lineToPoint: CGPointMake(increment,[valueAtZero floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*2,[valueAtOne floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*3, [valueAtTwo floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*4, [valueAtThree floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*5, [valueAtFour floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*6, [valueAtFive floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*7, [valueAtSix floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*8, [valueAtSeven floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*9, [valueAtEight floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*10, [valueAtNine floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(increment*11, 0)];
    
    NSImage *pattern = [NSImage imageNamed:@"pattern.png"];
    NSColor *background = [NSColor colorWithPatternImage: pattern];
    [background set];
    [path fill];

}

@end
