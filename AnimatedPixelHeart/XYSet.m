//
//  XYSet.m
//  AnimatedPixelHeart
//
//  Created by Lackern on 7/4/16.
//  Copyright © 2016 TLC Interactive All rights reserved.
//

#import "XYSet.h"

@implementation XYSet

- (XYSet*)init;
{
    self.x = 0;
    self.y = 0;
    
    return self;
}

- (XYSet *)initWithX:(NSInteger)x andY:(NSInteger)y;
{
    NSLog(@"xxx: %ld",(long)x);
    self.x = x;
    self.y = y;
    
    return self;
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"x: %ld, y: %ld", (long)self.x, (long)self.y];
}

@end
