//
//  ViewController.m
//  Esercizio3
//
//  Created by Adriano Melillo on 24/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int _num;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initializeGame];
}

-(void)initializeGame {
    _num = [self getRandomNumberBetween:1 to:100];
    [self.numLabel setText:[NSString stringWithFormat:@"%i", _num]];
    NSLog(@"%i", _num);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void)yesAnswer:(id)sender {
    if(_num%2 == 0) {
        [self displayWinAlert];
    } else {
        [self displayLoseAlert];
    }
}

-(void)noAnswer:(id)sender {
    if(_num%2 != 0) {
        [self displayWinAlert];
    } else {
        [self displayLoseAlert];
    }
}

-(void)displayWinAlert {
    NSString *message = @"Sei forte";
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"CORRETTO!" message:message
                                                                          preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         [self initializeGame];
                                                     }];
    [alertViewController addAction:okAction];
    [self presentViewController:alertViewController animated:true completion:nil];
}

-(void)displayLoseAlert {
    NSString *message = @"Sei scarso";
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"CRETINO!" message:message
                                                                          preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@":(" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         [self initializeGame];
                                                     }];
    [alertViewController addAction:okAction];
    [self presentViewController:alertViewController animated:true completion:nil];
}

@end
