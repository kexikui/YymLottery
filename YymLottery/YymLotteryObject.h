//
//  YymLotteryObject.h
//  YouYiMeiDemo
//
//  Created by book on 2018/11/11.
//  Copyright © 2018年 book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol YymLotteryProtocol<JSExport>

- (void)share:(NSString *)sharejson;

@end

@interface YymLotteryObject : NSObject<YymLotteryProtocol>

@end
