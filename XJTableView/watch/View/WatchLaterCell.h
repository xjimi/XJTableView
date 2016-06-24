//
//  WatchLaterCell.h
//  Vidol
//
//  Created by XJIMI on 2016/3/5.
//  Copyright © 2016年 XJIMI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XJTableViewCell.h"

@interface WatchLaterCell : XJTableViewCell

@property (nonatomic, weak) IBOutlet UIImageView *imgView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *subtitleLabel;

@end
