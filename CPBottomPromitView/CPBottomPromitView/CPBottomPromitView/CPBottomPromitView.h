//
//  CPBottomPromitView.h
//  BottomPromitView
//
//  Created by lk06 on 17/2/15.
//  Copyright © 2017年 lk06. All rights reserved.
//

#import "CPBottomPromit.h"

@class CPBottomPromitView;

@protocol CPBottomPromitViewDelegate <NSObject>
/**点击事件*/
-(void)bottomPromitView:(CPBottomPromitView *)bottomPromitView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@optional
/**取消选择*/
-(void)bottomPromitViewForCancle:(CPBottomPromitView *)bottomPromitView;
@end

@interface CPBottomPromitView : UIView
@property (nonatomic , assign) id<CPBottomPromitViewDelegate>   cpDelegate;
@property (nonatomic , assign , readonly) CPBlurEffectStyle     style;          //背景类型
@property (nonatomic , assign , readonly) CPBottomPromitOption  *option;          //背景类型

/**初始化*/
+(__kindof CPBottomPromitView *)bottomPromitViewWithStyle:(CPBlurEffectStyle)style
                                                   option:(CPBottomPromitOption *)option;

/**添加标题*/
-(void)addTitle:(NSString *)title
         detail:(NSString *)detail
     titleColor:(UIColor *)titleColor
    detailColor:(UIColor *)detailColor;

/**添加头部视图*/
-(void)addHeadViewHeadTitle:(NSString *)title;

/**显示*/
-(void)showBottomPromit;
@end
