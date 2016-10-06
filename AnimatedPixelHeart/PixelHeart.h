//
//  PixelHeart.h
//  AnimatedPixelHeart
//
//  Created by Lackern on 7/4/16.
//  Copyright © 2016 TLC Interactive All rights reserved.
//

#import "LeftTriangleView.h"
#import "RightTriangleView.h"
#import "XYSet.h"

#import "XibDesignableTemplate.h"

@interface PixelHeart : XibDesignableTemplate

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *PH_LeftSide;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *PH_RightSide;

@property (nonatomic, retain) NSArray *animationSet;

-(void)animateNow;

@end
