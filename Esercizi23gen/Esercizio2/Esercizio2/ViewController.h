//
//  ViewController.h
//  Esercizio2
//
//  Created by Adriano Melillo on 23/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UILabel *numLabel;

@end

