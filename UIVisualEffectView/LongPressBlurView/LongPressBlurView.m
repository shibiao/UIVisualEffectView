//
//  LongPressBlurView.m
//  UIVisualEffectView
//
//  Created by sycf_ios on 2016/10/17.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "LongPressBlurView.h"
@interface LongPressBlurView ()
@property (nonatomic,strong) UIVisualEffectView *effectView;
@property (nonatomic,assign) CGFloat tempAlpha;

@end
@implementation LongPressBlurView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addBlurView];
    }
    return self;
}

-(void)addBlurView{
    _tempAlpha=0.7;
    //添加模糊
    self.effectView=[[UIVisualEffectView alloc]init];
    self.effectView.effect=[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    self.effectView.frame=self.bounds;
    self.effectView.alpha=0;
    [self addSubview:self.effectView];
    //添加长按手势
    UILongPressGestureRecognizer *longPress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressAction:)];
    [self addGestureRecognizer:longPress];
    
}
-(void)longPressAction:(UILongPressGestureRecognizer *)gesture{
    //动画
    [UIView animateWithDuration:0.5 animations:^{
        self.effectView.alpha=_tempAlpha;
    }];
    if (gesture.state==UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:0.5 animations:^{
            self.effectView.alpha=0;
        }];
    }
}
-(void)setEffect:(UIVisualEffect *)effect{
    self.effectView.effect=effect;
}
-(UIVisualEffect *)effect{
    return self.effectView.effect;
}
-(void)setBlurAlpha:(CGFloat)blurAlpha{
    _tempAlpha=blurAlpha;
}
@end
