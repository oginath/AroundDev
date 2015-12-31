//
//  TabsController.m
//  AroundDev
//
//  Created by Or Ginath on 12/30/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import "TabsController.h"
#import <Parse/Parse.h>
#import "UIViewController+KNSemiModal.h"
#import "ProfileViewController.h"
@interface TabsController ()

@end

@implementation TabsController
@synthesize navTitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    profileVC = (ProfileViewController *)[sb instantiateViewControllerWithIdentifier:@"ProfileVC"];
    profileVC.view.layer.frame = CGRectMake(0, 0, 200, 250);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    [self.navigationItem setHidesBackButton:YES animated:YES];
    
//    UIImageView *navigationImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
//    navigationImage.image=[UIImage imageNamed:@"icon.png"];
//    
//    UIImageView *workaroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//    [workaroundImageView addSubview:navigationImage];
    //navTitle.titleView = workaroundImageView;
    
    navTitle.title = @"around";
    
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    NSString* vcName = [viewController title];
    
    if ([vcName isEqualToString:@"ProfilePlaceholderVC"]) {
                
        [self presentSemiViewController:profileVC];
        
        return NO;
    }
    
    return YES;
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
