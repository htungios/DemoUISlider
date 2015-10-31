//
//  ViewController.m
//  DemoUISlider
//
//  Created by Hoang Ngoc Tung on 31/10/2015.
//  Copyright (c) Năm 2015 HoangNgocTung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *slider;
    
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.2
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    slider.transform = CGAffineTransformMakeRotation(-M_PI_2); // transform : su thay doi
    slider.tintColor = [UIColor redColor]; //tintcolor : duong gach duoi
    slider.thumbTintColor = [UIColor blueColor]; // thumtintcolor : con lan
}

- (void) onTimer {
    slider.value += 0.05;
    if (slider.value >= 1.0) {
        slider.value = 1.0;
        [_timer invalidate]; // dung lenh _timer
    }
}


@end
