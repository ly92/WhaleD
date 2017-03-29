//
//  ViewController.m
//  WhalePayDemo
//
//  Created by 李勇 on 2017/3/2.
//  Copyright © 2017年 liyong. All rights reserved.
//

#import "ViewController.h"
#import "WhalePayViewController.h"
#import "MBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)payAction1 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    
    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction2 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bd4d9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdcd9b1a276a8d";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction3 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bdcd9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"1";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdcd9b1a276a8d";
    receipt4.money = @"0.41";
    receipt4.info = @"饭票打一折";
    receipt4.isDefault = @"";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction4 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9dc4d9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"1";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdc49b1a276a8d";
    receipt4.money = @"0.41";
    receipt4.info = @"饭票打一折";
    receipt4.isDefault = @"";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction5 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"1";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bd4d9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdc49b1a276a8d";
    receipt4.money = @"0.41";
    receipt4.info = @"饭票打一折";
    receipt4.isDefault = @"";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction6 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt1.isDefault = @"1";
    receipt1.ctype = @"1";
    receipt1.type = @"lhq";
    WPReceiptType *receipt2 = [[WPReceiptType alloc] init];
    receipt2.atid = @"25";
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bd4d9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdcd9b1a276a8d";
    receipt4.money = @"0.41";
    receipt4.info = @"饭票打一折";
    receipt4.isDefault = @"";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction7 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9dc4d9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462ebdc4d9b1a276a8d";
    receipt4.money = @"0.41";
    receipt4.info = @"饭票打一折";
    receipt4.isDefault = @"";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}
- (IBAction)payAction8 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
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
    receipt1.isDefault = @"1";
    receipt1.ctype = @"1";
    receipt1.type = @"lhq";
    WPReceiptType *receipt2 = [[WPReceiptType alloc] init];
    receipt2.atid = @"25";
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"1";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bc4d9b1a276a8d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"1";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bd4d9b1a276a8d";
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
    

    wpOrder.receiptArray = @[receipt1,receipt2,receipt3,receipt4,receipt5];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"WhaleResources";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}

- (IBAction)payAction9 {
    WPOrder *wpOrder = [[WPOrder alloc] init];
    
    //    akOrder.appkey = @"5ew28qukblY8r6n9P3BG";
    //    akOrder.appsecret = @"NmU7hSSADNN9rKB0AwLbi9K9GyIW2K2f";
    
    wpOrder.pno = @"5e6d164b24be4d748fde32d814b17171";
    wpOrder.cno = @"cf43a400aabf49dba4e2c62a5fe29f07";
    wpOrder.orderno = @"123123123";
    wpOrder.content = @"机械键盘";
    wpOrder.userId = @"233";
    wpOrder.fixedorgmoney = @"";
    wpOrder.payTypeArray = @[@(1),@(25),@(2),@(4),@(31),@(25),@(26)];
    wpOrder.remoteip = @"192.0.1.9";

    WPReceiptType *receipt1 = [[WPReceiptType alloc] init];
    receipt1.atid = @"31";
    receipt1.name = @"彩之云邻花钱";
    receipt1.ano = @"1031c5a4efa552b24491bda9d212abbb";
    receipt1.money = @"0.10";
    receipt1.info = @"不打折";
    receipt1.isDefault = @"1";
    receipt1.ctype = @"1";
    receipt1.type = @"lhq";
    WPReceiptType *receipt2 = [[WPReceiptType alloc] init];
    receipt2.atid = @"25";
    receipt2.name = @"微信";
    receipt2.ano = @"1025f6c4eedfcd92462b8b7383257877";
    receipt2.money = @"0.01";
    receipt2.info = @"微信不打折";
    receipt2.isDefault = @"1";
    receipt2.ctype = @"1";
    receipt2.type = @"weixin";
    WPReceiptType *receipt3 = [[WPReceiptType alloc] init];
    receipt3.atid = @"2";
    receipt3.name = @"彩之云全国饭票";
    receipt3.ano = @"eb65c3ca8016462e9bdc4d9b1a278d";
    receipt3.money = @"0.01";
    receipt3.info = @"饭票打一折";
    receipt3.isDefault = @"1";
    receipt3.ctype = @"4";
    receipt3.type = @"fanpiao";
    WPReceiptType *receipt4 = [[WPReceiptType alloc] init];
    receipt4.atid = @"1";
    receipt4.name = @"北苑地方饭票";
    receipt4.ano = @"eb65c3ca8016462e9bdc4db1a276a8d";
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
    

    wpOrder.receiptArray = @[receipt1];
    
    
    WhalePayViewController *whalePayVC = [WhalePayViewController sharedInstance];
    whalePayVC.bundleName = @"";
    
    
    [whalePayVC createPayment:wpOrder viewController:self withCompletion:^(NSDictionary *result) {
        if ([[result objectForKey:@"code"] integerValue] == 0){
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
        }else{
            [MBProgressHUD showMessage:[result objectForKey:@"message"] toView:self.view];
            NSLog(@"%@",[result objectForKey:@"message"]);
        }
    }];
    
}

@end
