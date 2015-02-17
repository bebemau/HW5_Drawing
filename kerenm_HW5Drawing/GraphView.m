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
    
//    [path moveToPoint:CGPointMake(0,0)];
//    [path lineToPoint: CGPointMake(20,20)];
//    [path relativeLineToPoint:CGPointMake(100,0)];
//    [path relativeLineToPoint:CGPointMake(20,-20)];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    float bigNumber = 100;
    
    [path moveToPoint:CGPointMake(0,0)];
    [path lineToPoint: CGPointMake(0,[valueAtZero floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(50,[valueAtOne floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(100, [valueAtTwo floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(150, [valueAtThree floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(200, [valueAtFour floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(250, [valueAtFive floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(300, [valueAtSix floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(350, [valueAtSeven floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(400, [valueAtEight floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(450, [valueAtNine floatValue] * bigNumber)];
    [path lineToPoint:CGPointMake(450, 0)];
    [path lineToPoint:CGPointMake(0, 0)];
    
//    [path moveToPoint:NSMakePoint(0, 0)];
//    [path lineToPoint:NSMakePoint(0, [valueAtZero floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(50, [valueAtOne floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(100, [valueAtTwo floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(150, [valueAtThree floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(200, [valueAtFour floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(250, [valueAtFive floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(300, [valueAtSix floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(350, [valueAtSeven floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(400, [valueAtEight floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(450, [valueAtNine floatValue] * bigNumber)];
//    [path lineToPoint:NSMakePoint(450, 0)];
//    [path lineToPoint:NSMakePoint(0, 0)];
//    [path closePath];
    
    NSImage *pattern = [NSImage imageNamed:@"pattern.png"];
    NSColor *background = [NSColor colorWithPatternImage: pattern];
    [background set];
    [path fill];

}

@end
