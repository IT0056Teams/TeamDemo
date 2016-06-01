//
//  ViewController.m
//  UISliderDemo
//
//  Created by student on 16/5/21.
//  Copyright © 2016年 Henry_kenter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UISlider *mySlider;
@property (nonatomic,strong) UIImageView *myImageView;

@end

@implementation ViewController

- (UISlider *)mySlider {
    if (_mySlider == nil) {
        _mySlider = [[UISlider alloc] init];
        _mySlider.frame = CGRectMake(100, 400, 120, 20);
        //设置当前滑动条处于中间位置
        _mySlider.value = 0.5;
        //不触发连续事件
//        _mySlider.continuous = NO;
        //设置完成部分的轨道颜色为红色
        _mySlider.minimumTrackTintColor = [UIColor redColor];
        //设置未完成部分的轨道颜色为蓝色
        _mySlider.maximumTrackTintColor = [UIColor blueColor];
        //设置滑块的颜色
        _mySlider.thumbTintColor = [UIColor grayColor];
        //绑定ValueChange方法
        [_mySlider addTarget:self action:@selector(change) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:_mySlider];
    }
    return _mySlider;
    
    NSLog(@"123456789");
    
    
}

- (UIImageView *)myImageView {
    if (_myImageView == nil) {
        _myImageView = [[UIImageView alloc] init];
        _myImageView.frame = CGRectMake(100, 50, 120, 300);
        _myImageView.image = [UIImage imageNamed:@"1.jpg"];
        _myImageView.alpha = .5;//设置图片刚开始透明度为0.5与滑块对应的value保持一致
        [self.view addSubview:_myImageView];
    }
    return _myImageView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self myImageView];
    [self mySlider];
   
}

- (void)change{
    [self.myImageView setAlpha:self.mySlider.value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
