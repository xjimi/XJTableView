//
//  WatchHistoryCell.h
//  Vidol
//
//  Created by XJIMI on 2015/11/17.
//  Copyright © 2015年 XJIMI. All rights reserved.
//

#import "XJTableViewCell.h"

@interface WatchHistoryCell : XJTableViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *subtitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *descLabel;

@end
