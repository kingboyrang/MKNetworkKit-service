//
//  SRMNetworkEngine.h
//  MKNetworkKit-iOS-Demo
//
//  Created by aJia on 2014/4/24.
//  Copyright (c) 2014年 Steinlogic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceArgs.h"
#import "SRMNetworkOperation.h"
@interface SRMNetworkEngine : MKNetworkEngine
-(SRMNetworkOperation*) operationWithArgs:(ServiceArgs*) args;
@end

/***
NSMutableArray *params=[NSMutableArray array];
[params addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"695749595",@"qqCode", nil]];

ServiceArgs *args=[[ServiceArgs alloc] init];
args.methodName=@"qqCheckOnline";//要调用的webservice方法
args.soapParams=params;//传递方法参数
args.httpWay=ServiceHttpPost;
 ***/
