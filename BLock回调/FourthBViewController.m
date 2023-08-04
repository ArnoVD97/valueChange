//
//  FourthBViewController.m
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import "FourthBViewController.h"
#import "Masonry.h"

@interface FourthBViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)NSString *content;
@end

@implementation FourthBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor blackColor];
    _stringTextField = [[UITextField alloc] init];
    _stringTextField.backgroundColor = [UIColor whiteColor];
    _stringTextField.delegate = self;
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
    
    [_BButton addTarget:self action:@selector(callBackData:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_BButton];
    [_BButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@170);
        make.left.equalTo(@100);
        make.width.equalTo(self.view).multipliedBy(0.5);
        make.height.equalTo(@70);
    }];
}
- (IBAction)callBackData:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notice" object:nil userInfo:@{@"text":_stringTextField.text}];
    [self dismissViewControllerAnimated:NO completion:NULL];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {

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
