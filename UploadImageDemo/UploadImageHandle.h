//
//  UploadImageHandle.h
//  UploadImageDemo
//
//  Created by lei on 2017/6/20.
//  Copyright © 2017年 lei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySingleton.h"
#import <UIKit/UIKit.h>

typedef void(^SuccessBlock)(NSArray *ImageArray);
typedef void(^FailureBlock)(NSString *errorMsg);


@interface UploadImageHandle : NSObject


DEFINE_SINGLETON_FOR_HEADER(UploadImageHandle)

/**
 *  上传图片
 *
 *  @param number  最大上传数量
 *  @param sucess  成功返回
 *  @param failure 失败返回
 */
- (void)uploadImageWithMaxSelectNumber:(NSInteger)number Sucess:(SuccessBlock)sucess Failure:(FailureBlock)failure;

@end

