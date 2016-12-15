//
//  HHViewControllerOne.m
//  HHNavBarBgDome
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHViewControllerOne.h"
#import "HHViewControllerTow.h"

@interface HHViewControllerOne ()

@end

@implementation HHViewControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar hh_setBackgroundColor:[UIColor redColor] shadownColor:[UIColor redColor]];
    self.title = @"One";
    [self initSubView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (void)initSubView{
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:self.view.frame];
    pushBtn.backgroundColor = [UIColor blueColor];
    [pushBtn setTitle:@"Click Push Next" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(clickPushBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)clickPushBtn{
    HHViewControllerTow *vc = [[HHViewControllerTow alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
