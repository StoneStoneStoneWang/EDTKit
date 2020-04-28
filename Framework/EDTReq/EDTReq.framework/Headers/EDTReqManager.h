//
//  EDTReqManager.h
//  DReq
//
//  Created by three stone 王 on 2019/7/24.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>

@import AFNetworking;
NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSString * const EDTTokenInvalidNotification;

typedef NS_ENUM(NSInteger ,EDTServiceType) {
    
    EDTServiceTypeNone,
    
    EDTServiceTypeSucc,
    
    EDTServiceTypeError,
    
    EDTServiceTypeTokenInvalid
};

@interface EDTBaseBean : NSObject

@property (nonatomic ,copy) NSString *msg;

@property (nonatomic ,strong) id data;

@property (nonatomic ,copy) NSString *state;

@property (nonatomic ,assign) EDTServiceType sType;

@property (nonatomic ,copy) NSString *code;

@property (nonatomic ,assign) EDTServiceType tType;

@end

NS_SWIFT_NAME(EDTReq)
@interface EDTReqManager : NSObject

#pragma mark ---- 121 服务器返回的错误 122 token失效 123 其他错误 124 返回的不是json
/*
 如果操作是无返回值的成功 success是空串
 */

+ (void)postWithUrl:(NSString *)url
          andParams:(NSDictionary *)params
          andHeader:(NSDictionary *)header
            andSucc:(void (^)(id _Nonnull))success
            andFail:(void (^)(NSError * _Nonnull))failure NS_SWIFT_NAME(postWithUrl(url:params:header:succ:fail:));

+ (void)postTranslateWithParams:(NSDictionary *)params
                        andSucc:(void (^)(id _Nonnull))success
                        andFail:(void (^)(NSError * _Nonnull))failure NS_SWIFT_NAME(postTranslateWithParams(params:succ:fail:));

+ (void)postAreasWithUrl:(NSString *)url
               andParams:(NSDictionary *)params
                 andSucc:(void (^)(id _Nonnull))success
                 andFail:(void (^)(NSError * _Nonnull))failure NS_SWIFT_NAME(postAreaWithUrl(url:params:succ:fail:));

+ (void)analysisSomeThing:(NSString *)lat andLon:(NSString *)lon NS_SWIFT_NAME(s_analysis(lat:lon:));


+ (void)fetchSignedWithTag:(NSString *)tag
                   andSucc:(void (^)(id _Nonnull))success
                   andFail:(void (^)(NSError * _Nonnull))failure;

+ (void)signedWithTag:(NSString *)tag
           andContent:(NSString *)content
           andEncoded:(NSString *)encoded
              andSucc:(void (^)(id _Nonnull))success
              andFail:(void (^)(NSError * _Nonnull))failure;

@end

NS_ASSUME_NONNULL_END
