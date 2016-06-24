//
//  WatchHistoryCell.m
//  Vidol
//
//  Created by XJIMI on 2015/11/17.
//  Copyright © 2015年 XJIMI. All rights reserved.
//

#import "WatchHistoryCell.h"
#import "WatchHistoryModel.h"

@implementation WatchHistoryCell

- (void)awakeFromNib
{
    UIView *selectedBgView = [[UIView alloc] init];
    selectedBgView.backgroundColor = [UIColor lightGrayColor];
    self.selectedBackgroundView = selectedBgView;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGRect frame = self.bounds;
    frame.size.height -= 3.0f;
    self.selectedBackgroundView.frame = frame;
}

- (void)reloadData:(WatchHistoryModel *)data
{
    self.titleLabel.text = data.epTitle;
    self.subtitleLabel.text = data.title;
    self.descLabel.text = data.programme_name;
}

@end
