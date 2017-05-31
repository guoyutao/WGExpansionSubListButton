//
//  WGExpansionSubListButton.m
//  WGExpansionSubListButton
//
//  Created by guoyutao on 2017/5/31.
//  Copyright © 2017年 guoyutao. All rights reserved.
//

#import "WGExpansionSubListButton.h"

@interface WGExpansionSubListButton()

@property (nonatomic,assign) BOOL ischangeedAngle;
@end

@implementation WGExpansionSubListButton

- (id)init {
    if (self = [super init]) {
        _ischangeedAngle = NO;
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _ischangeedAngle = NO;
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _ischangeedAngle = NO;
    }
    return self;
}

- (void)changeImageAngle{
    if (!_ischangeedAngle) {
        self.layer.anchorPoint = CGPointMake(0.5, 0.5);
        CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        rotationAnimation.toValue = [NSNumber numberWithFloat:1.55];
        rotationAnimation.fromValue = [NSNumber numberWithFloat:0];
        rotationAnimation.duration = 0.2f;
        rotationAnimation.repeatCount = 1;
        rotationAnimation.removedOnCompletion = NO;
        rotationAnimation.autoreverses = NO;
        rotationAnimation.fillMode = kCAFillModeForwards;
        [self.layer addAnimation:rotationAnimation forKey:@"revItUpAnimation"];
    }else {
        self.layer.anchorPoint = CGPointMake(0.5, 0.5);
        CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        rotationAnimation.toValue = [NSNumber numberWithFloat:0];
        rotationAnimation.fromValue = [NSNumber numberWithFloat:1.55];
        rotationAnimation.duration = 0.2f;
        rotationAnimation.repeatCount = 1;
        rotationAnimation.removedOnCompletion = NO;
        rotationAnimation.autoreverses = NO;
        rotationAnimation.fillMode = kCAFillModeForwards;
        [self.layer addAnimation:rotationAnimation forKey:@"revItUpAnimation"];
    }
    _ischangeedAngle = !_ischangeedAngle;
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    [self changeImageAngle];
}

@end
