//
//  XJTableViewDataModel.h
//  Vidol
//
//  Created by XJIMI on 2015/10/4.
//  Copyright © 2015年 XJIMI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "XJTableViewHeaderModel.h"
#import "XJTableViewCellModel.h"

@interface XJTableViewDataModel : NSObject

@property (nonatomic, strong) XJTableViewHeaderModel *section;
@property (nonatomic, strong) NSMutableArray *rows;

+ (XJTableViewDataModel *)modelWithSection:(XJTableViewHeaderModel *)headerModel rows:(NSArray *)rows;

@end
