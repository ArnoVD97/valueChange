//
//  InitViewController.m
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import "InitViewController.h"
#import "FirstAViewController.h"
#import "SecondAViewController.h"
#import "ThirdAViewController.h"
#import "FourthAViewController.h"

@interface InitViewController ()

@end

@implementation InitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FirstAViewController *blockViewController = [[FirstAViewController alloc] init];
    SecondAViewController *delegateViewController = [[SecondAViewController alloc] init];
    ThirdAViewController *messageViewController = [[ThirdAViewController alloc] init];
    FourthAViewController *propertyViewController = [[FourthAViewController alloc] init];
    
    UITabBarController *homeTabBarController = [[UITabBarController alloc] init];
    NSArray *tabBarViewControllersArray = [[NSArray alloc] initWithObjects:blockViewController, delegateViewController, messageViewController, propertyViewController, nil];
    //创建一个数组 接受各个viewController
    UINavigationController *blcokNavC = [[UINavigationController alloc] initWithRootViewController:blockViewController];
    UINavigationController *delegateNavC = [[UINavigationController alloc] initWithRootViewController:delegateViewController];

    homeTabBarController.viewControllers =tabBarViewControllersArray;
    homeTabBarController.selectedIndex = 0;
    homeTabBarController.view.backgroundColor = [UIColor whiteColor];
    homeTabBarController.tabBar.backgroundColor = [UIColor grayColor];
    homeTabBarController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:homeTabBarController animated:YES completion:nil];
    
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
