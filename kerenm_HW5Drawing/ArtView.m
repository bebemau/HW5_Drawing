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
    
    NSImage *pattern = [NSImage imageNamed:@"animalPrint.jpg"];
    NSColor *background = [NSColor colorWithPatternImage: pattern];
    [background set];
    [NSBezierPath fillRect: self.bounds];

    
    [self drawEar:90 PointY:200];
    [self drawEar:240 PointY:200];
    [self drawFace];
    [self drawEye:150 PointY:130];
    [self drawEye:250 PointY:130];
    
    //left whiskers
    NSColor *whiskersColor = [NSColor whiteColor];
    [self drawWhisker:180 StartY:100 CurveX:2 CurveY:150 Control1X:5 Control1Y:140 Control2X:5 Control2Y:140 WhatColor:whiskersColor Fill:YES];
    [self drawWhisker:180 StartY:100 CurveX:2 CurveY:80 Control1X:0.03 Control1Y:90 Control2X:0.03 Control2Y:80 WhatColor:whiskersColor Fill:YES];
    [self drawWhisker:180 StartY:100 CurveX:2 CurveY:40 Control1X:0.03 Control1Y:50 Control2X:0.03 Control2Y:40 WhatColor:whiskersColor Fill:YES];
    //right whiskers
    [self drawWhisker:280 StartY:100 CurveX:440 CurveY:150 Control1X:380 Control1Y:140 Control2X:405 Control2Y:140 WhatColor:whiskersColor Fill:YES];
    [self drawWhisker:280 StartY:100 CurveX:440 CurveY:80 Control1X:300 Control1Y:90 Control2X:405 Control2Y:80 WhatColor:whiskersColor Fill:YES];
    [self drawWhisker:280 StartY:100 CurveX:440 CurveY:40 Control1X:410 Control1Y:50 Control2X:405 Control2Y:40 WhatColor:whiskersColor Fill:YES];
    
    //nose
    NSColor *noseColor = [NSColor blackColor];
    [self drawWhisker:210 StartY:140 CurveX:240 CurveY:140 Control1X:180 Control1Y:60 Control2X:270 Control2Y:60 WhatColor:noseColor Fill:YES];
    
    //mouth
    [self drawWhisker:145 StartY:80 CurveX:225 CurveY:80 Control1X:155 Control1Y:30 Control2X:215 Control2Y:30 WhatColor:noseColor Fill:NO];
    [self drawWhisker:225 StartY:80 CurveX:305 CurveY:80 Control1X:235 Control1Y:30 Control2X:295 Control2Y:30 WhatColor:noseColor Fill:NO];
    
//    NSBezierPath *thePath = [NSBezierPath bezierPath];
//    [thePath moveToPoint:NSMakePoint(200,200)];
//    [thePath appendBezierPathWithArcFromPoint:NSMakePoint(100,100) toPoint:NSMakePoint(0,200) radius:100];
//    [[NSColor blueColor] set];
//    [thePath stroke];
    
//    NSBezierPath *aPath = [NSBezierPath bezierPath];
//    [aPath moveToPoint:NSMakePoint(80,80)];
//    [aPath appendBezierPathWithArcFromPoint:NSMakePoint(40,40) toPoint:NSMakePoint(60,40) radius:100];
//    [[NSColor blueColor] set];
//    [aPath stroke];
    
    
}

//-(NSString*)ReturnFormattedNumber:(NSInteger)input StyleFlag : (long) styleSelected {

-(void)drawEar:(NSInteger)inputX PointY: (NSInteger)inputY {
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:NSMakePoint(inputX, inputY)];
    [path relativeLineToPoint:NSMakePoint(60, 90)];
    [path relativeLineToPoint:NSMakePoint(60, -90)];
    [path closePath];
    
    [[NSColor blackColor] set];
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
         WhatColor: (NSColor*)fillColor
              Fill: (BOOL)fill
{
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:1];
    
    [path moveToPoint:NSMakePoint(startX, startY)];
    
    [path curveToPoint:NSMakePoint(curveX, curveY)
         controlPoint1:NSMakePoint(control1X, control1Y)
         controlPoint2:NSMakePoint(control2X, control2Y)
     ];
    
    //[path closePath];
    
    if(fill){
        //[[NSColor colorWithCalibratedWhite:0.98 alpha:1] set];
        [fillColor set];
        [path fill];
    }
    
    
    //[[NSColor colorWithCalibratedWhite:0.6 alpha:1] set];
    [path stroke];
}

@end
