//
//  WhalePaySDKTests.m
//  WhalePaySDKTests
//
//  Created by 李勇 on 2017/3/2.
//  Copyright © 2017年 liyong. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WhalePayViewController.h"
#import <OCMock/OCMock.h>
#import "ViewController.h"

#define WECHAT_PAY_KEY @"wx42967af88ec99501"
#define ALI_PAY_SCHEMEL @"AliPay20170313"

@interface WhalePaySDKTests : XCTestCase
@property (strong, nonatomic) WhalePayViewController *WhaleVC;//
@property (strong, nonatomic) ViewController *VC;//
@end



@implementation WhalePaySDKTests

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

- (void)testSetAppId{
    NSTimeInterval start = CACurrentMediaTime();
    [self.WhaleVC setAppId:@{
                        @"appkey" : @"5ew28qukblY8r6n9P3BG",
                        @"appsecret" : @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f",
                        @"wxAppid" : WECHAT_PAY_KEY,
                        @"aliSchemel" : ALI_PAY_SCHEMEL
                        }];
    NSLog(@"----------%lf",CACurrentMediaTime() - start);
}



@end
