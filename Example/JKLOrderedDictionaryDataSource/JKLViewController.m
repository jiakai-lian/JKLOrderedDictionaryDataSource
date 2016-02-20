//
//  JKLViewController.m
//  JKLOrderedDictionaryDataSource
//
//  Created by Jacky Jiakai Lian on 02/20/2016.
//  Copyright (c) 2016 Jacky Jiakai Lian. All rights reserved.
//

#import "JKLViewController.h"

@import JKLOrderedDictionaryDataSource;

@interface JKLViewController ()
@property(weak, nonatomic) IBOutlet UITableView         *tableView;
@property(strong, nonatomic) id <UITableViewDataSource> dataSource;
@end

@implementation JKLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    MutableOrderedDictionary *orderedDictionary = [MutableOrderedDictionary dictionary];

    [orderedDictionary setObject:@[@"item1", @"item2"]
                          forKey:@"Section 1"];
    [orderedDictionary setObject:@[@"item3", @"item4", @"item5"]
                          forKey:@"Section 2"];
    
    self.tableView.dataSource = self.dataSource = [JKLOrderedDictionaryDataSource tableViewDataSourceWithOrderedDictionary:orderedDictionary.copy
                                                                                                            cellIdentifier:@"Cell"
                                                                                               tableViewCellConfigureBlock:^(UITableViewCell *cell, id item, NSIndexPath *indexPath) {

                                                                                                   cell.textLabel.text = item;

                                                                                               }].tableViewDataSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
