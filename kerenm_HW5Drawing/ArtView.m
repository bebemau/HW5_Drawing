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
    
    //left whiskers
    [self drawWhisker:180 StartY:100 CurveX:2 CurveY:150 Control1X:5 Control1Y:140 Control2X:5 Control2Y:140];
    [self drawWhisker:180 StartY:100 CurveX:2 CurveY:80 Control1X:0.03 Control1Y:90 Control2X:0.03 Control2Y:80];
    [self drawWhisker:180 StartY:100 CurveX:2 CurveY:40 Control1X:0.03 Control1Y:50 Control2X:0.03 Control2Y:40];
    //right whiskers
    [self drawWhisker:280 StartY:100 CurveX:440 CurveY:150 Control1X:380 Control1Y:140 Control2X:405 Control2Y:140];
    [self drawWhisker:280 StartY:100 CurveX:440 CurveY:80 Control1X:300 Control1Y:90 Control2X:405 Control2Y:80];
    [self drawWhisker:280 StartY:100 CurveX:440 CurveY:40 Control1X:410 Control1Y:50 Control2X:405 Control2Y:40];
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

-(void)drawWhisker: (NSInteger)startX
            StartY: (NSInteger)startY
            CurveX: (NSInteger)curveX
            CurveY: (NSInteger)curveY
         Control1X: (NSInteger)control1X
         Control1Y: (NSInteger)control1Y
         Control2X: (NSInteger)control2X
         Control2Y: (NSInteger)control2Y
{
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:1];
    
//    [path moveToPoint:NSMakePoint(180, 100)];
//    
//    [path curveToPoint:NSMakePoint(2, 80)
//         controlPoint1:NSMakePoint(0.03, 90)
//         controlPoint2:NSMakePoint(0.03, 80)
//     ];
    
    [path moveToPoint:NSMakePoint(startX, startY)];
    
    [path curveToPoint:NSMakePoint(curveX, curveY)
         controlPoint1:NSMakePoint(control1X, control1Y)
         controlPoint2:NSMakePoint(control2X, control2Y)
     ];
    
    [path closePath];
    
    [[NSColor colorWithCalibratedWhite:0.98 alpha:1] set];
    [path fill];
    
    [[NSColor colorWithCalibratedWhite:0.6 alpha:1] set];
    [path stroke];
}

@end
