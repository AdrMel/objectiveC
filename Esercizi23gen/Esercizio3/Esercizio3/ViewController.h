//
//  ViewController.h
//  Esercizio3
//
//  Created by Adriano Melillo on 24/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *numLabel;

-(IBAction)yesAnswer:(id)sender;
-(IBAction)noAnswer:(id)sender;

@end

