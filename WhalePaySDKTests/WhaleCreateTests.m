//
//  WhaleCreateTests.m
//  WhalePaySDK
//
//  Created by 李勇 on 2017/3/30.
//  Copyright © 2017年 liyong. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WhalePayViewController.h"
#import "ViewController.h"
#define WECHAT_PAY_KEY @"wx42967af88ec99501"
#define ALI_PAY_SCHEMEL @"AliPay20170313"

@interface WhaleCreateTests : XCTestCase
@property (strong, nonatomic) WhalePayViewController *WhaleVC;//
@property (strong, nonatomic) ViewController *VC;//
@end

@interface WhalePayViewController (WhaleTest)
- (void)getPreparePayOrderPayWay;
@end


@implementation WhaleCreateTests
- (void)setUp {
    [super setUp];
    self.WhaleVC = [WhalePayViewController sharedInstance];
    self.VC = [ViewController sharedInstance];
}

- (void)tearDown {
    
    self.WhaleVC = nil;
    self.VC = nil;
    
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}





//条件完整
- (void)testCreatePaymentDone{
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.content = @"机械键盘";
    wpOrder.userId = @"233";
    wpOrder.fixedorgmoney = @"";
    wpOrder.payTypeArray = @[@(1),@(25),@(2),@(4),@(31),@(25),@(26)];
    wpOrder.remoteip = @"192.0.1.9";
    
    WPReceiptType *receipt1 = [[WPReceiptType alloc] init];
    receipt1.atid = @"31";
    receipt1.name = @"彩之云邻花钱";
    receipt1.ano = @"1031c5a4efa552b24491bda9d212abbb";
    receipt1.money = @"100";
    receipt1.info = @"不打折";
    receipt1.isDefault = @"";
    receipt1.ctype = @"1";
    receipt1.type = @"lhq";
    WPReceiptType *receipt2 = [[WPReceiptType alloc] init];
    receipt2.atid = @"25";
    receipt2.name = @"微@信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bdc4d9b1a27";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdc4d9b1a276";
    receipt4.money = @"0.41";
    receipt4.info = @"饭票打一折";
    receipt4.isDefault = @"1";
    receipt4.ctype = @"4";
    receipt4.type = @"lfanpiao";
    WPReceiptType *receipt5 = [[WPReceiptType alloc] init];
    receipt5.atid = @"26";
    receipt5.name = @"彩之云支付宝";
    receipt5.ano = @"1026f3ea6372f073484c88d3de8104d8";
    receipt5.money = @"0.01";
    receipt5.info = @"饭票打一折";
    receipt5.isDefault = @"1";
    receipt5.ctype = @"1";
    receipt5.type = @"alipay";
    
    //必要条件不全
    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    
    //必要条件全面
    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    wpOrder.orderno = @"123123123";
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    //注册ID失败
    [self.WhaleVC setAppId:@{
                             @"appsecret" : @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f",
                             @"wxAppid" : WECHAT_PAY_KEY,
                             @"aliSchemel" : ALI_PAY_SCHEMEL
                             }];
    
    wpOrder.receiptArray = @[receipt1];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    //注册ID成功  只有1个收款通道
    [self.WhaleVC setAppId:@{
                             @"appkey" : @"5ew28qukblY8r6n9P3BG",
                             @"appsecret" : @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f",
                             @"wxAppid" : WECHAT_PAY_KEY,
                             @"aliSchemel" : ALI_PAY_SCHEMEL
                             }];

    wpOrder.receiptArray = @[receipt1];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    //只有1个收款通道
    wpOrder.receiptArray = @[receipt2];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    //只有1个收款通道
    wpOrder.receiptArray = @[receipt5];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
   
    //没有支持的付款通道
    wpOrder.payTypeArray = @[];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    //没有支持的收款通道
    wpOrder.payTypeArray = @[@(1),@(25),@(2),@(4),@(31),@(25),@(26)];
    wpOrder.receiptArray = @[];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
    
    
    //必要条件全面
    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    wpOrder.orderno = @"123123123";
    wpOrder.payTypeArray = @[@(1),@(25),@(2),@(4),@(31),@(25),@(26)];
    [self.WhaleVC createPayment:wpOrder viewController:self.VC withCompletion:^(NSDictionary *result) {
        
    }];
}


@end
