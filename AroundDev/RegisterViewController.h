//
//  RegisterViewController.h
//  AroundDev
//
//  Created by Or Ginath on 12/30/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userEmail;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userFullName;
@property (weak, nonatomic) IBOutlet UITextField *userPassword;
@property (weak, nonatomic) IBOutlet UITextField *userConfirmPass;
@property (weak, nonatomic) IBOutlet UILabel *errorText;

@end
