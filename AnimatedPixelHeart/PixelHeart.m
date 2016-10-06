//
//  PixelHeart.m
//  AnimatedPixelHeart
//
//  Created by Lackern on 7/4/16.
//  Copyright © 2016 TLC Interactive All rights reserved.
//

#import "PixelHeart.h"

@implementation PixelHeart

-(void)defaultSettings
{
    NSMutableArray *sets = [[NSMutableArray alloc] init];
    
    NSLog(@"sdsds%@",[[XYSet alloc] initWithX:arc4random()%10 andY:arc4random()%10] );
    for (int i = 0; i < 20; i++) {
        [sets addObject: [[XYSet alloc] initWithX:-arc4random()%30 andY:-arc4random()%30 ] ];
    }
    
    self.animationSet = [NSArray arrayWithArray:sets];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

-(void)animateNow;
{

    NSLog(@"set: %@", _animationSet);
    
    NSMutableArray *cSet = [[NSMutableArray alloc] init];
    [cSet addObjectsFromArray:self.PH_LeftSide];
    [cSet addObjectsFromArray:self.PH_RightSide];
    
    //for (int i = 0; i < self.PH_LeftSide.count; i++)
         for (int i = 0; i < cSet.count; i++)
    {
        
        UIView *view = [cSet objectAtIndex:i];
        XYSet *xySet = [self.animationSet objectAtIndex:i];
        
        [UIView animateWithDuration:1
                              delay:0
             usingSpringWithDamping:0.5 initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseIn animations:^{
                 
                 //[view setTransform:CGAffineTransformMakeTranslation(-xySet.x, -xySet.y)];
                 CGFloat x = arc4random()%50;
                 CGFloat y = arc4random()%50;
                 
                   [view setTransform:CGAffineTransformMakeTranslation(x-25, y-25)];
                 
             } completion:^(BOOL finished) {
//                 view.transform = CGAffineTransformIdentity;
                 NSLog(@"done");
                 
                 [UIView animateWithDuration:1
                                       delay:0
                      usingSpringWithDamping:0.5 initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseIn animations:^{
                          
                          view.transform = CGAffineTransformIdentity;
                      } completion:^(BOOL finished) {
                          
                          NSLog(@"done");
                      }];
             }];
    }
    
}


//IVlogo.transform = CGAffineTransformMakeTranslation(0, -368.0f);
//
//[UIView animateWithDuration:1.0
//                      delay:0.5
//     usingSpringWithDamping:0.5
//      initialSpringVelocity:0.1
//                    options:0
//                 animations:^{
//                     
//                     IVlogo.transform = CGAffineTransformIdentity;
//                     
//                 }completion:^(BOOL completed) {
//                     
//                 }];

@end
