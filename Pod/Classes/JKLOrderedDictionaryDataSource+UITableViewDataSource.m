//
// Created by jiakai lian on 20/02/2016.
//

#import "JKLOrderedDictionaryDataSource+UITableViewDataSource.h"
#import "JKLOrderedDictionaryDataSource+Private.h"

@implementation JKLOrderedDictionaryDataSource (UITableViewDataSource)

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return ((NSArray *)[self.orderedDictionary objectAtIndex:section]).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];

    id item = ((NSArray *)[self.orderedDictionary objectAtIndex:(NSUInteger)indexPath.section])[indexPath.row];

    if(self.tableViewCellConfigureBlock)
    {
        self.tableViewCellConfigureBlock(cell,item, indexPath);
    }

    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.orderedDictionary.count;
}

- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section {
    return [self.orderedDictionary keyAtIndex:section];
}


@end