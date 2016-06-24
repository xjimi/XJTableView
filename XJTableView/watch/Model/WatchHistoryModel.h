//
//  WatchHistoryModel.h
//  Vidol
//
//  Created by XJIMI on 2015/11/17.
//  Copyright © 2015年 XJIMI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WatchHistoryModel : NSObject

@property (nonatomic, copy)   NSString *title;
@property (nonatomic, copy)   NSString *image_url_s;
@property (nonatomic, copy)   NSString *programme_name;


//custom title
@property (nonatomic, copy)   NSString *epTitle;

@end
