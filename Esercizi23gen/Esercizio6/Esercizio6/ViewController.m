//
//  ViewController.m
//  Esercizio6
//
//  Created by Adriano Melillo on 24/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSString *name;
    NSString *surname;
    NSString *age;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.nameTextField.delegate = self;
    self.surnameTextField.delegate = self;
    self.ageTextField.delegate = self;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)savePressed:(id)sender {
    name = _nameTextField.text;
    surname = _surnameTextField.text;
    age = _ageTextField.text;
    
    NSLog(@"Nome: %@", name);
    NSLog(@"Cognome: %@", surname);
    NSLog(@"Età: %@", age);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if(textField == _nameTextField){
        
        [_surnameTextField becomeFirstResponder];
    } else {
        if(textField == _surnameTextField) {
            [_ageTextField becomeFirstResponder];
        } else {
            if(textField == _ageTextField) {
                [self savePressed:self];
            }
        }
    }
    
    return YES;
}

@end
