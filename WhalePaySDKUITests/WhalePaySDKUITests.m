//
//  WhalePaySDKUITests.m
//  WhalePaySDKUITests
//
//  Created by 李勇 on 2017/3/2.
//  Copyright © 2017年 liyong. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface WhalePaySDKUITests : XCTestCase

@end

@implementation WhalePaySDKUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    [[[XCUIApplication alloc] init].buttons[@"邻花钱"] tap];
    
}

- (void)testWeixin{
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"全部默认"] tap];
    [app.tables.staticTexts[@"彩之云微信支付（正式）"] tap];
    [app.buttons[@"立即支付"] tap];
}

- (void)testAli{
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"全部默认"] tap];
    [app.tables.staticTexts[@"彩之云支付宝（正式）"] tap];
    [app.buttons[@"立即支付"] tap];
}

- (void)testBack{
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"全部默认"] tap];
    [app.tables.staticTexts[@"彩之云支付宝（正式）"] tap];
    [[app.navigationBars[@"支付"] childrenMatchingType:XCUIElementTypeButton].element tap];
}

@end
