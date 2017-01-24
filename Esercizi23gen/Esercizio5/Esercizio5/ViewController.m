//
//  ViewController.m
//  Esercizio5
//
//  Created by Adriano Melillo on 24/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initialize];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initialize {
    NSMutableArray *personsArray = @[@"Campbell Freddie", @"Kim Krista", @"Hubbard Merle", @"Greene Lorenzo"].mutableCopy;
    NSArray *sortedArray = [personsArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSLog(@"Ordine alfabetico: %@", sortedArray);
}

@end
