//
//  LgoinViewController.m
//  AroundDev
//
//  Created by Or Ginath on 12/30/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>
@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize userName;
@synthesize userPass;
@synthesize errorText;

- (void)viewDidLoad {
    [super viewDidLoad];
    userPass.secureTextEntry = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (IBAction)lgnBtnClick:(id)sender {
    
    NSString* uname = userName.text;
    NSString* upass = userPass.text;
    
    if ([uname isEqualToString:@""]) {
        //handle
    }
    
    if ([upass isEqualToString:@""]) {
        //handle
    }
    
    [PFUser logInWithUsernameInBackground:uname password:upass
     block:^(PFUser *user, NSError *error) {
      if (user) {
          userName.text = @"";
          userPass.text =@"";
          UIViewController* LoggedVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoggedVC"];
          [self.parentViewController presentViewController:LoggedVC animated:YES completion:nil];

      } else {
          errorText.text = [error localizedDescription];
      }
      }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
