//
//  LongPressBlurView.h
//  UIVisualEffectView
//
//  Created by sycf_ios on 2016/10/17.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LongPressBlurView : UIView
@property (nonatomic,strong) UIVisualEffect *effect;//渲染模式
@property (nonatomic,assign) CGFloat blurAlpha;//模糊度(0~1)
@end
