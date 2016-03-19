//
//  FirstViewController.m
//  umeng
//
//  Created by shaoting on 15/11/18.
//  Copyright © 2015年 9elephas. All rights reserved.
//

#import "FirstViewController.h"
#import "MobClick.h"
#import "UMSocial.h"
#import "UMSocialWechatHandler.h"
#import "UMSocialQQHandler.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self makeBtn1];
    [self makeBtn2];
    [self makeBtn3];
    
    
    // Do any additional setup after loading the view.
}
-(void)makeBtn1{
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.backgroundColor = [UIColor redColor];
    btn1.frame = CGRectMake(100, 100, 100, 100);
    [btn1 setTitle:@"测试1" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [MobClick event:@"f1"];

}

-(void)makeBtn2{
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.backgroundColor = [UIColor redColor];
    btn2.frame = CGRectMake(100, 250, 100, 100);
    [btn2 setTitle:@"测试2" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    [MobClick event:@"f2"];
}

-(void)makeBtn3{
    UIButton * btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn3.backgroundColor = [UIColor redColor];
    btn3.frame = CGRectMake(20, 20, 50, 50);
    [btn3 setTitle:@"分享" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(fenxiang:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
}
-(void)fenxiang:(UIButton *)btn{
    //配合appdelegate设置分享
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"从友盟账号里获取"
                                      shareText:@"你要分享的文字"
                                     shareImage:[UIImage imageNamed:@"icon.png"]
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToWechatSession,UMShareToQQ,UMShareToWechatTimeline,nil]
                                       delegate:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//视图即将显示
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [MobClick beginLogPageView:@"ONE"];
}
//视图即将消失
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:@"ONE"];
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
