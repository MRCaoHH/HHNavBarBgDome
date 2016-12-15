//
//  HHViewControllerTow.m
//  HHNavBarBgDome
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHViewControllerTow.h"
#import "HHViewControllerThree.h"

@interface HHViewControllerTow ()

@end

@implementation HHViewControllerTow

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar hh_setBackgroundColor:[UIColor blueColor] shadownColor:[UIColor blueColor]];
    self.view.backgroundColor = [UIColor redColor];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"Push" style:UIBarButtonItemStylePlain target:self action:@selector(clickPopToRoot)];
    self.navigationItem.rightBarButtonItem = item;
    self.title = @"Tow";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickPopToRoot{
    HHViewControllerThree *three = [[HHViewControllerThree alloc]init];
    [self.navigationController pushViewController:three animated:YES];
}

@end
