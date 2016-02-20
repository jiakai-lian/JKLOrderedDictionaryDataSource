//
// Created by jiakai lian on 20/02/2016.
//

#import "JKLOrderedDictionaryDataSource+UICollectionViewDataSource.h"
#import "JKLOrderedDictionaryDataSource+Private.h"

@implementation JKLOrderedDictionaryDataSource (UICollectionViewDataSource)

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return ((NSArray *)[self.orderedDictionary objectAtIndex:section]).count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier
                                                                           forIndexPath:indexPath];

    if (self.collectionViewCellConfigureBlock) {
        id item = ((NSArray *) [self.orderedDictionary objectAtIndex:(NSUInteger) indexPath.section])[indexPath.row];
        self.collectionViewCellConfigureBlock(cell, item, indexPath);
    }

    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.orderedDictionary.count;
}


@end