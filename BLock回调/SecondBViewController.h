//
//  SecondBViewController.h
//  BLock回调
//
//  Created by zzy on 2023/6/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol delegateValueChange <NSObject>

- (void) changeValue:(NSString *)name;

@end
@interface SecondBViewController : UIViewController
@property(nonatomic, weak)id<delegateValueChange> delegate;
@end

NS_ASSUME_NONNULL_END
