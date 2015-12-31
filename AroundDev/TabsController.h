//
//  TabsController.h
//  AroundDev
//
//  Created by Or Ginath on 12/30/15.
//  Copyright © 2015 Around. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileViewController.h"
@interface TabsController : UITabBarController <UITabBarControllerDelegate>{
    ProfileViewController* profileVC;
}
@property (weak, nonatomic) IBOutlet UINavigationItem *navTitle;

@end
