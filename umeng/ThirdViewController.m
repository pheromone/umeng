//
//  ThirdViewController.m
//  umeng
//
//  Created by shaoting on 15/11/18.
//  Copyright © 2015年 9elephas. All rights reserved.
//

#import "ThirdViewController.h"
#import "MobClick.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self makeBtn1];
    [self makeBtn2];
    
    // Do any additional setup after loading the view.
}
-(void)makeBtn1{
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.backgroundColor = [UIColor greenColor];
    btn1.frame = CGRectMake(100, 100, 100, 100);
    [btn1 setTitle:@"测试5" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(onClick1:) forControlEvents:UIControlEventTouchUpInside];

}
-(void)makeBtn2{
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.backgroundColor = [UIColor greenColor];
    btn2.frame = CGRectMake(100, 250, 100, 100);
    [btn2 setTitle:@"模拟闪退" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(onClickException:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}
-(void)onClick1:(UIButton *)btn{
    [MobClick event:@"t1" attributes:@{@"测试5":@"aaaa"} counter:520];
     NSLog(@"t1");
}
-(void)onClickException:(UIButton *)btn{
    NSArray * array = [NSArray array];
    [array objectAtIndex:NSUIntegerMax];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [MobClick beginLogPageView:@"THREE"];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:@"THREE"];
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
