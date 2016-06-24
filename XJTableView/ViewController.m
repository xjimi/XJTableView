//
//  ViewController.m
//  XJTableView
//
//  Created by XJIMI on 2016/6/24.
//  Copyright © 2016年 XJIMI. All rights reserved.
//

#import "ViewController.h"
#import "XJTableViewManager.h"
#import "WatchLaterCell.h"
#import "WatchLaterModel.h"
#import "WatchHeader.h"

@interface ViewController ()

@property (nonatomic, strong) XJTableViewManager *tableView;

@end

@implementation ViewController

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"All-new Mazda";
    [self createTableView];
    [self reloadData];
}

- (void)createTableView
{
    _tableView = [XJTableViewManager manager];
    _tableView.backgroundColor = [UIColor colorWithWhite:0.1020 alpha:1.0000];
    [self.view addSubview:_tableView];
    
    __weak typeof(self)weakSelf = self;
    [_tableView addWillDisplayCellBlock:^(XJTableViewCellModel *cellModel,
                                          XJTableViewCell *cell,
                                          NSIndexPath *indexPath)
     {
         if (cell.alpha == 0.0f) return;
         cell.alpha = 0.0f;
         [UIView animateWithDuration:.6
                               delay:0
                             options:UIViewAnimationOptionAllowUserInteraction
                          animations:^
          {
              cell.alpha = 1.0f;
          } completion:nil];
         
     }];
    
    [_tableView addDidSelectRowBlock:^(XJTableViewCellModel *cellModel, NSIndexPath *indexPath) {
        
        [weakSelf.navigationController pushViewController:[ViewController new] animated:YES];
        
    }];
}

- (void)reloadData
{
    NSMutableArray *rows = [NSMutableArray array];
    for (int i = 0; i < 5; i++)
    {
        WatchLaterModel *model = [[WatchLaterModel alloc] init];
        model.title = @"All-new Mazda";
        model.subtitle = @"All-new Mazda CX-3";
        model.image_url_s = @"cx-3";
        
        XJTableViewCellModel *cellModel = [XJTableViewCellModel
                                           modelWithReuseIdentifier:[WatchLaterCell identifier]
                                           cellHeight:79.0f
                                           data:model];
        [rows addObject:cellModel];
    }
    
    XJTableViewHeaderModel *headerModel = [XJTableViewHeaderModel
                                           modelWithReuseIdentifier:[WatchHeader identifier]
                                           headerHeight:44.0f
                                           data:@"Mazda"];
    
    XJTableViewDataModel *dataModel = [XJTableViewDataModel
                                       modelWithSection:nil
                                       rows:rows];
    
    XJTableViewDataModel *dataModel2 = [XJTableViewDataModel
                                       modelWithSection:headerModel
                                       rows:rows];

    self.tableView.data = @[dataModel, dataModel2].mutableCopy;
}

@end
