//
//  ShapesView.m
//  kerenm_HW5Drawing
//
//  Created by Man, Keren on 2/16/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "ShapesView.h"

@implementation ShapesView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSColor *backgroundColor = [NSColor yellowColor];
    [backgroundColor set];
    [NSBezierPath fillRect: self.bounds];
    
    [self drawCircle];
    [self drawTriangle];
    [self drawRectangle];
    
}

- (void)drawCircle{
    
    NSRect rect =NSMakeRect(10.0, 10.0, 100.0, 100.0);
    NSBezierPath* circlePath = [NSBezierPath bezierPath];
    [circlePath appendBezierPathWithOvalInRect: rect];
    
    //set line thickness
    [circlePath setLineWidth:4];
    
    [[NSColor blackColor] setStroke];
    [[NSColor redColor] setFill];
    [circlePath stroke];
    [circlePath fill];
}

-(void)drawTriangle{
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:NSMakePoint(300, 50)];
    [path lineToPoint:NSMakePoint(350, 150)];
    [path lineToPoint:NSMakePoint(400, 50)];
    [path closePath];
    //[[NSColor purpleColor] set];
    NSImage *pattern = [NSImage imageNamed:@"pattern.png"];
    NSColor *background = [NSColor colorWithPatternImage: pattern];
    [background set];
    [path fill];
}

-(void)drawRectangle{
    NSRect rect =NSMakeRect(150.0, 150.0, 100.0, 100.0);
    NSBezierPath *rectPath = [NSBezierPath bezierPathWithRect:rect];
    [[NSColor greenColor] setFill];
    [rectPath fill];
}

@end
