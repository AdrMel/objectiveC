//
//  ViewController.h
//  Esercizi
//
//  Created by Adriano Melillo on 23/01/17.
//  Copyright © 2017 Adriano Melillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UITextField *textField;

@end

