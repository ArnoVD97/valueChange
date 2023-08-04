//
//  FourthAViewController.m
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import "FourthAViewController.h"
#import "Masonry.h"
#import "FourthBViewController.h"
@interface FourthAViewController ()
@property(nonatomic, strong)FourthBViewController *BVC;
@end

@implementation FourthAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"通知传值";
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationController.navigationBar.translucent = NO;
    _stringLabel = [[UILabel alloc] init];
    _stringLabel.backgroundColor = [UIColor whiteColor];
    _stringLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_stringLabel];
    [_stringLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@50);
        make.left.equalTo(@100);
        make.width.equalTo(self.view).multipliedBy(0.5);
        make.height.equalTo(@70);
    }];
    _AButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _AButton.backgroundColor = [UIColor magentaColor];
    [_AButton setTitle:@"pushtoB" forState:UIControlStateNormal];
    [_AButton addTarget:self action:@selector(getData:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_AButton];
    [_AButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@170);
        make.left.equalTo(@100);
        make.width.equalTo(self.view).multipliedBy(0.5);
        make.height.equalTo(@70);
    }];
    _BVC = [FourthBViewController new];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notice:) name:@"notice" object:nil];
}
- (IBAction)getData:(id)sender {
    
    _BVC.modalPresentationStyle = 0;
    [self presentViewController:_BVC animated:NO completion:nil];
}
- (NSString*)notice:(NSNotification *)notice {
    _stringLabel.text = notice.userInfo[@"text"];
    return  _stringLabel.text;
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
