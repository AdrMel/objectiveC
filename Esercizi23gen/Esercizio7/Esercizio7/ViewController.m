//
//  ViewController.m
//  Esercizio7
//
//  Created by Adriano Melillo on 24/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () {
    int _timeCount;
    NSTimer *_timer;
    int min;
    int ore;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTick) userInfo:nil repeats:true];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)timerTick {
    _timeCount++;
    if(_timeCount > 59) {
        _timeCount = 0;
        min++;
    } else {
        if(min > 59){
            min = 0;
            ore++;
        }
    }
    [self.timeLabel setText:[NSString stringWithFormat:@"%i:%i:%i", ore, min, _timeCount]];
}

@end
