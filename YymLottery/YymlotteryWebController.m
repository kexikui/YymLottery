//
//  YymlotteryWebController.m
//  YouYiMeiDemo
//
//  Created by book on 2018/11/11.
//  Copyright © 2018年 book. All rights reserved.
//

#import "YymlotteryWebController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import <TMSDK/TMEngineConfig.h>
#import "YymLotteryObject.h"
@interface YymlotteryWebController ()<UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *LotteryWebView;

@end

@implementation YymlotteryWebController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.native = NO;

    [self.view addSubview:self.LotteryWebView];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/application/kxk01xyyj_nhqey/h5/#/",[TMEngineConfig sharedManager].domain]]];
    [self.LotteryWebView loadRequest:request];
    
}

#pragma mark - UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    //取出html中的js执行环境  固定写法
    JSContext *jsContext = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    YymLotteryObject *lotteryObject = [[YymLotteryObject alloc]init];
    jsContext[@"tmAndroidInf"] = lotteryObject;

}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    NSLog(@"开始加载了");
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"加载出错了");
}

- (UIWebView *)LotteryWebView {
    
    if (!_LotteryWebView) {
        _LotteryWebView = [[UIWebView alloc]init];
        _LotteryWebView.frame = self.view.bounds;
        _LotteryWebView.delegate = self;
    }
    return _LotteryWebView;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
