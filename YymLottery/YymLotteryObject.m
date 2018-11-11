//
//  YymLotteryObject.m
//  YouYiMeiDemo
//
//  Created by book on 2018/11/11.
//  Copyright © 2018年 book. All rights reserved.
//

#import "YymLotteryObject.h"
#import <TMShare/TMShare.h>
@implementation YymLotteryObject

- (void)share:(NSString *)sharejson {

    NSDictionary *shareDict = [self dictionaryWithJsonString:sharejson];

    [[TMShareInstance sharedManager]tm_showShare:shareDict[@"url"] thumbUrl:shareDict[@"img"] title:shareDict[@"title"] descr:shareDict[@"des"] currentController:nil finish:nil];
    
}
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil ;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
@end
