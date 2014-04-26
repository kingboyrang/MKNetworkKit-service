//
//  SRMNetworkOperation.m
//  MKNetworkKit-iOS-Demo
//
//  Created by aJia on 2014/4/24.
//  Copyright (c) 2014年 Steinlogic. All rights reserved.
//

#import "SRMNetworkOperation.h"

@implementation SRMNetworkOperation
- (void)requestWithArgs:(ServiceArgs*)args success:(MKNKResponseBlock)response failure:(MKNKResponseErrorBlock)error{
    self.stringEncoding=args.defaultEncoding;
    //自定义内容
    [self setCustomPostDataEncodingHandler:^NSString *(NSDictionary *postDataDict) {
        return args.bodyMessage;
    } forType:args.contentType];
    if(args.headers&&[args.headers count]>0)
    {
       [self addHeaders:args.headers];
        //NSMutableURLRequest *request=(NSMutableURLRequest*)self.readonlyRequest;
        //[request setAllHTTPHeaderFields:args.headers];
    }
    [self addCompletionHandler:response errorHandler:error];
}
@end
