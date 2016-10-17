# UIVisualEffectView
添加高斯模糊,可以在UIView或者UIImageView等视图上添加本视图,使用简单方便.
![2](https://github.com/shibiao/UIVisualEffectView/blob/master/2.gif)
#####只需在view上添加一个LongPressBlurView,长按就能模糊.
#####使用方法如下(详情见demo):
```
 
    //添加模糊效果
    LongPressBlurView *longPressView=[[LongPressBlurView alloc]initWithFrame:self.view.bounds];
    [self.imageView addSubview:longPressView];
    //以下是可选设置
    /*
    longPressView.effect=[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];//可以不设置,默认UIBlurEffectStyleLight
    longPressView.blurAlpha=1;//可以不设置,默认0.6
     */

```
