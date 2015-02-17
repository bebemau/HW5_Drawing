//
//  RandomPercentGenerator.m
//  kerenm_HW5Drawing
//
//  Created by Man, Keren on 2/16/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "RandomPercentGenerator.h"

@implementation RandomPercentGenerator

-(NSArray*)arrayOfPercents:(NSUInteger)count
{
    NSAssert(count > 0, @"Must have a count greater than zero");
    
    NSMutableArray *numbers = [NSMutableArray new];
    while (numbers.count < count) {
        NSNumber *singleNumber = @( arc4random_uniform(1000) / 1000.0 );
        [numbers addObject:singleNumber];
    }
    return [NSArray arrayWithArray:numbers];
}

@end
