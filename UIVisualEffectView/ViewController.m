//
//  ViewController.m
//  UIVisualEffectView
//
//  Created by sycf_ios on 2016/10/17.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "ViewController.h"
#import "LongPressBlurView.h"//导入头文件
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    self.imageView.userInteractionEnabled=YES;
    
    
    //添加模糊效果
    LongPressBlurView *longPressView=[[LongPressBlurView alloc]initWithFrame:self.view.bounds];
    [self.imageView addSubview:longPressView];
    //以下是可选设置
    /*
    longPressView.effect=[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];//可以不设置,默认UIBlurEffectStyleLight
    longPressView.blurAlpha=1;//可以不设置,默认0.6
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
