//
//  RegisterViewController.m
//  AroundDev
//
//  Created by Or Ginath on 12/30/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import "RegisterViewController.h"
#import <Parse/Parse.h>

@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize userName;
@synthesize userEmail;
@synthesize userFullName;
@synthesize userPassword;
@synthesize userConfirmPass;
@synthesize errorText;

- (void)viewDidLoad {
    [super viewDidLoad];
    userPassword.secureTextEntry = YES;
    userConfirmPass.secureTextEntry = YES;

    // Do any additional setup after loading the view.
}

- (IBAction)register:(id)sender {
    
    if(![userPassword.text isEqualToString:userConfirmPass.text]){
        errorText.text = @"Passwords do not match";
    }
    
    PFUser *user = [PFUser user];
    user.username = userName.text;
    user.password = userPassword.text;
    user.email = userEmail.text;
    if(![userFullName.text isEqualToString:@""])
        user[@"FullName"] = userFullName.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            [self performSegueWithIdentifier:@"LoggedFromRegister" sender:sender];
        }
        else {
            errorText.text = [error localizedDescription];
        }
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
