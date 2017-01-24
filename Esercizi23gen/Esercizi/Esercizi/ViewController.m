//
//  ViewController.m
//  Esercizi
//
//  Created by Adriano Melillo on 23/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() {
    NSString *name;
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

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    name = [textField text];
    [self.nameLabel setText:(@"%@", name)];
    NSLog(@"%@", name);
    return YES;
}



@end
