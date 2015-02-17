//
//  ArtView.m
//  kerenm_HW5Drawing
//
//  Created by Man, Keren on 2/16/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "ArtView.h"

IB_DESIGNABLE
@implementation ArtView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [self drawEar:90 PointY:200];
    [self drawEar:240 PointY:200];
    [self drawFace];
    [self drawEye:150 PointY:130];
    [self drawEye:250 PointY:130];
}

//-(NSString*)ReturnFormattedNumber:(NSInteger)input StyleFlag : (long) styleSelected {

-(void)drawEar:(NSInteger)inputX PointY: (NSInteger)inputY {
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:NSMakePoint(inputX, inputY)];
    [path relativeLineToPoint:NSMakePoint(60, 90)];
    [path relativeLineToPoint:NSMakePoint(60, -90)];
    [path closePath];
    //[[NSColor purpleColor] set];
    NSImage *pattern = [NSImage imageNamed:@"pattern.png"];
    NSColor *background = [NSColor colorWithPatternImage: pattern];
    [background set];
    [path fill];
}

- (void)drawFace{
    
    NSRect rect =NSMakeRect(25.0, 25.0, 400.0, 200.0);
    NSBezierPath* circlePath = [NSBezierPath bezierPath];
    [circlePath appendBezierPathWithOvalInRect: rect];

    [[NSColor redColor] setFill];
    [circlePath fill];
}

- (void)drawEye:(NSInteger)inputX PointY: (NSInteger)inputY {
    
    NSRect rect =NSMakeRect(inputX, inputY, 50.0, 50.0);
    NSBezierPath* circlePath = [NSBezierPath bezierPath];
    [circlePath appendBezierPathWithOvalInRect: rect];
    
    [[NSColor blackColor] setFill];
    [circlePath fill];
}

@end
