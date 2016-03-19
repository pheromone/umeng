//
//  SeconedViewController.m
//  umeng
//
//  Created by shaoting on 15/11/18.
//  Copyright © 2015年 9elephas. All rights reserved.
//

#import "SeconedViewController.h"
#import "MobClick.h"
@interface SeconedViewController ()

@end

@implementation SeconedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self makeBtn1];
    [self makeBtn2];
    
    
    
    // Do any additional setup after loading the view.
}
-(void)makeBtn1{
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame = CGRectMake(100, 100, 100, 100);
    btn1.backgroundColor = [UIColor yellowColor];
    [btn1 setTitle:@"测试3" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [MobClick event:@"s1"];

    [btn1 addTarget:self action:@selector(onclick:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)onclick:(UIButton *)btn{
    NSLog(@"sss");

}
-(void)makeBtn2{
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(100, 250, 100, 100);
    btn2.backgroundColor = [UIColor yellowColor];
    [btn2 setTitle:@"测试4" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(onclick2:) forControlEvents:UIControlEventTouchUpInside];

}
-(void)onclick2:(UIButton *)btn{
    [MobClick event:@"s2"];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [MobClick beginLogPageView:@"TWO"];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:@"TWO"];
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
