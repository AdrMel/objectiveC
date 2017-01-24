//
//  ViewController.m
//  Esercizio2
//
//  Created by Adriano Melillo on 23/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() {
    int _num;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    _num = textField.text.intValue;
    
    NSString *message = [NSString stringWithFormat:@"%i", _num];
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Pari o dispari?" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *pariAction = [UIAlertAction actionWithTitle:@"PARI" style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
                                                           [self.numLabel setText:[NSString stringWithFormat:@"%i", _num]];
                                                           NSLog(@"Pari: %i", _num);
                                                       }];
    
    UIAlertAction *dispariAction = [UIAlertAction actionWithTitle:@"DISPARI" style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
                                                           [self.numLabel setText:[NSString stringWithFormat:@"%i", _num]];
                                                           NSLog(@"Dispari: %i", _num);
                                                       }];
    
    [alertViewController addAction:pariAction];
    [alertViewController addAction:dispariAction];
    [self presentViewController:alertViewController animated:true completion:nil];
    
    return YES;
}

@end
