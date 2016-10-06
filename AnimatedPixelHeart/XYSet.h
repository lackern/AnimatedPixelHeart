//
//  XYSet.h
//  AnimatedPixelHeart
//
//  Created by Lackern on 7/4/16.
//  Copyright © 2016 TLC Interactive All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYSet : NSObject


@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;

- (XYSet*)init;
- (XYSet *)initWithX:(NSInteger)x andY:(NSInteger)y;

@end
