//
//  LoginViewController.h
//  AroundDev
//
//  Created by Or Ginath on 12/30/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userPass;
@property (weak, nonatomic) IBOutlet UILabel *errorText;

@end

