//
//  ViewController.m
//  CPBottomPromitView
//
//  Created by lk03 on 2017/8/24.
//  Copyright © 2017年 chenp. All rights reserved.
//

#import "ViewController.h"
#import "CPBottomPromit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)action:(id)sender {
    
    CPBottomPromitOption *option = [[CPBottomPromitOption alloc] init];
    
    CPBottomPromitView *bottomView = [CPBottomPromitView bottomPromitViewWithStyle:CPBlurEffectStyleLight option:option];
    UIColor *titleColor = [UIColor redColor];
    UIColor *detailColor = [UIColor blueColor];
    [bottomView addTitle:@"你好" detail:@"不好" titleColor:titleColor detailColor:detailColor];
    [bottomView addTitle:nil detail:@"不好" titleColor:titleColor detailColor:detailColor];
    [bottomView addTitle:@"你好" detail:nil titleColor:titleColor detailColor:detailColor];
    [bottomView addTitle:@"你好,测试长度需要这么一段话，我得写得很长很长，有多长呢，就这么长" detail:@"你好,测试长度需要这么一段话，我得写得很长很长，有多长呢，就这么长" titleColor:titleColor detailColor:detailColor];
    [bottomView addHeadViewHeadTitle:@"你好,测试长度需要这么一段话，我得写得很长很长，有多长呢，就这么长"];
    [bottomView showBottomPromit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
