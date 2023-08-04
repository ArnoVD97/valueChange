//
//  FirstBViewController.h
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^blockCallBack) (NSString *data);
@interface FirstBViewController : UIViewController
@property(nonatomic, copy)blockCallBack callBackData;


@end

NS_ASSUME_NONNULL_END
