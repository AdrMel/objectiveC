//
//  ViewController.m
//  Esercizio4
//
//  Created by Adriano Melillo on 24/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int _sumTotal;
    int _temp;
}

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
    NSMutableArray *numArray = @[].mutableCopy;
    
    //popolazione array
    for(int i = 0; i < 100; i++) {
        [numArray addObject:@([self getRandomNumberBetween:1 to:100])];
    }
    
    //somma
    for(int j = 0; j < 100; j++) {
        _temp = numArray[j];
        _sumTotal = _sumTotal + _temp;
    }
    NSLog(@"%i", _sumTotal);
    [self.sumAllLabel setText:[NSString stringWithFormat:@"%i", _sumTotal]];
    
    //ordine crescente
    NSArray *arrayCrescente = [numArray sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"Array crescente: %@", arrayCrescente);
    
    //ordine decrescente
    arrayCrescente = [[[numArray sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
    NSLog(@"Array decrescente: %@", arrayCrescente);
    
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}



@end
