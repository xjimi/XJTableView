//
//  WatchLaterCell.m
//  Vidol
//
//  Created by XJIMI on 2016/3/5.
//  Copyright © 2016年 XJIMI. All rights reserved.
//

#import "WatchLaterCell.h"
#import "WatchLaterModel.h"

@implementation WatchLaterCell

- (void)awakeFromNib
{
    UIView *selectedBgView = [[UIView alloc] init];
    selectedBgView.backgroundColor = [UIColor colorWithWhite:0.1020 alpha:1.0000];
    self.selectedBackgroundView = selectedBgView;
}

- (void)reloadData:(WatchLaterModel *)data
{
    self.imgView.image = [UIImage imageNamed:data.image_url_s];
    self.titleLabel.text = data.title;
    self.subtitleLabel.text = data.subtitle;
}
@end
