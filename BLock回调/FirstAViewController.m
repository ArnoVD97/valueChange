//
//  FirstAViewController.m
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import "FirstAViewController.h"
#import "FirstBViewController.h"
@interface FirstAViewController ()
@property(nonatomic, strong)UILabel *stringLabel;
@property(nonatomic, strong)UIButton *AButton;
@end

@implementation FirstAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"块传值";
    self.view.backgroundColor = [UIColor cyanColor];
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
    
}
-(IBAction)getData:(id)sender {
    FirstBViewController *BVC = [[FirstBViewController alloc] init];
    __weak FirstAViewController *weakSelf = self;

    BVC.callBackData = ^(NSString *text){
        __strong typeof(weakSelf) strongSelf = weakSelf;
     NSLog(@"text b is %@",text);

     weakSelf.stringLabel.text = text;

    };
    BVC.modalPresentationStyle = 0;
    [self presentViewController:BVC animated:YES completion:nil];

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
