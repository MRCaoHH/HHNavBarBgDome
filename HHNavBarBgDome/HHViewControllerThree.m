//
//  HHViewControllerThree.m
//  HHNavBarBgDome
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHViewControllerThree.h"

@interface HHViewControllerThree ()

@end

@implementation HHViewControllerThree

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar hh_setBackgroundColor:[UIColor orangeColor] shadownColor:[UIColor orangeColor]];
    self.title = @"Three";
    [self initSubView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initSubView{
    UIButton *popToRootBtn = [[UIButton alloc]initWithFrame:self.view.frame];
    popToRootBtn.backgroundColor = [UIColor purpleColor];
    [popToRootBtn setTitle:@"Click Popo to  Root" forState:UIControlStateNormal];
    [popToRootBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [popToRootBtn addTarget:self action:@selector(clickPopToRootBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popToRootBtn];
}

- (void)clickPopToRootBtn{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
