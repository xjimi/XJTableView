//
//  WatchHeader.m
//  XJTableView
//
//  Created by XJIMI on 2016/6/24.
//  Copyright © 2016年 XJIMI. All rights reserved.
//

#import "WatchHeader.h"

@implementation WatchHeader

- (void)awakeFromNib
{
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor blackColor];
    self.backgroundView = bgView;
}

- (void)reloadData:(id)data
{
    self.titleLabel.text = data;
}

@end
