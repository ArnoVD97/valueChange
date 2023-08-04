//
//  SecondAViewController.h
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import <UIKit/UIKit.h>
#import "SecondBViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondAViewController : UIViewController<delegateValueChange>
@property(nonatomic, strong)UILabel *stringLabel;
@property(nonatomic, strong)UIButton *AButton;

@end

NS_ASSUME_NONNULL_END
