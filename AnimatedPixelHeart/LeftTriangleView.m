//
//  LeftTriangleView.m
//  AnimatedPixelHeart
//
//  Created by Lackern on 7/4/16.
//  Copyright © 2016 TLC Interactive All rights reserved.
//

#import "LeftTriangleView.h"

@implementation LeftTriangleView {
    CAShapeLayer *_colorDotLayer;
    UIColor* _fillColor;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (_colorDotLayer == nil) {
        _colorDotLayer = [CAShapeLayer layer];
        _colorDotLayer.fillColor = _fillColor.CGColor;
        _colorDotLayer.borderColor = _fillColor.CGColor;
        //_colorDotLayer.strokeColor = _fillColor.CGColor;
        _colorDotLayer.borderWidth = 0.5;
        _colorDotLayer.lineWidth = 0.5;
        
        [self.layer addSublayer:_colorDotLayer];
    }
    
    CGRect bounds = self.bounds;

    UIBezierPath *path = [UIBezierPath bezierPath];
    
    CGFloat x = bounds.size.width;
    CGFloat y = bounds.size.height;
    
    [path moveToPoint:CGPointMake(0, y/2.0)];
    [path addLineToPoint:CGPointMake(x, y)];
    [path addLineToPoint:CGPointMake(x, 0)];
    [path closePath];
    //[path applyTransform:CGAffineTransformMakeTranslation(CGRectGetMidX(bounds), CGRectGetMidY(bounds))];
    _colorDotLayer.path = path.CGPath;
}

- (void)setPrimaryColor:(UIColor *)primaryColor;
{
    _fillColor = primaryColor;
    [self layoutSubviews];
}

@end
