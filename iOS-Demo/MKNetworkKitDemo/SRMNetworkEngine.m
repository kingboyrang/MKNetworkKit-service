//
//  SRMNetworkEngine.m
//  MKNetworkKit-iOS-Demo
//
//  Created by aJia on 2014/4/24.
//  Copyright (c) 2014年 Steinlogic. All rights reserved.
//

#import "SRMNetworkEngine.h"

@implementation SRMNetworkEngine
-(SRMNetworkOperation*) operationWithArgs:(ServiceArgs*) args{
    NSString *httpWay=args.httpWay!=ServiceHttpGet?@"POST":@"GET";
    NSString *url=[NSString stringWithFormat:@"http://%@/",[args.webURL host]];
    NSString *urlPath=[[[args requestURL] absoluteString] stringByReplacingOccurrencesOfString:url withString:@""];
    [self registerOperationSubclass:[SRMNetworkOperation class]];
    MKNetworkOperation *op=[self operationWithPath:urlPath params:nil httpMethod:httpWay];
    [self enqueueOperation:op];
    return (SRMNetworkOperation*)op;
}
@end
