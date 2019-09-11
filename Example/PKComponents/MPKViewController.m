//
//  MPKViewController.m
//  PKComponents
//
//  Created by 1418627665@qq.com on 09/11/2019.
//  Copyright (c) 2019 1418627665@qq.com. All rights reserved.
//

#import "MPKViewController.h"
#import <SNSPSegmentView.h>

@interface MPKViewController ()
@property (nonatomic, strong) SNSPSegmentView *segmentView;

@end

@implementation MPKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _segmentView = [[SNSPSegmentView alloc] initWithFrame:CGRectMake(50, 250, 207, 29) titleArray:@[@"首购奖",@"复购奖",@"单客奖"] currentSelectedIndex:0];
    _segmentView.backgroundColor = [UIColor whiteColor];
    [_segmentView drawView];
    _segmentView.selectedBlock = ^(NSInteger index) {
        NSLog(@"selected is %ld",index);
    };
    [self.view addSubview:_segmentView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
