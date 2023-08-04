//
//  SecondBViewController.m
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//
#import "SecondBViewController.h"
#import "Masonry.h"

@interface SecondBViewController ()
@property(nonatomic, strong)UITextField *stringTextField;
@property(nonatomic, strong)UIButton *BButton;

@end

@implementation SecondBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    _stringTextField = [[UITextField alloc] init];
    _stringTextField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_stringTextField];
    [_stringTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@50);
        make.left.equalTo(@100);
        make.width.equalTo(self.view).multipliedBy(0.5);
        make.height.equalTo(@70);
    }];
    _BButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _BButton.backgroundColor = [UIColor cyanColor];
    [_BButton setTitle:@"poptoA" forState:UIControlStateNormal];
    
    [_BButton addTarget:self action:@selector(callBackData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_BButton];
    [_BButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@170);
        make.left.equalTo(@100);
        make.width.equalTo(self.view).multipliedBy(0.5);
        make.height.equalTo(@70);
    }];
}
- (void)callBackData {
    [self.delegate changeValue:_stringTextField.text];
    [self dismissViewControllerAnimated:NO completion:nil];
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
