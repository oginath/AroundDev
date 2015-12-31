//
//  ProfileViewController.m
//  AroundDev
//
//  Created by Or Ginath on 12/31/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import "ProfileViewController.h"
#import <Parse/Parse.h>
@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize userText;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        userText.text = currentUser.username;
    } else {
        // show the signup or login screen
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logOut:(id)sender {
    [PFUser logOut];
    UIViewController* loginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
    [self.parentViewController presentViewController:loginVC animated:YES completion:nil];

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
