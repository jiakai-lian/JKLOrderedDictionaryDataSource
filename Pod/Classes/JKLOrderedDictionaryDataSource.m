//
// Created by jiakai lian on 20/02/2016.
//

#import "JKLOrderedDictionaryDataSource+Private.h"
#import "OrderedDictionary.h"

@implementation JKLOrderedDictionaryDataSource

#pragma mark - Life Cycle

#pragma mark - Private Methods

#pragma mark - Private Properties

#pragma mark - Public Methods

#pragma mark - Public Properties

- (id <UITableViewDataSource>)tableViewDataSource {
    if (self.tableViewCellConfigureBlock) {
        return (id <UITableViewDataSource>) self;
    }

    return nil;
}

- (id <UICollectionViewDataSource>)collectionViewDataSource {
    if (self.collectionViewCellConfigureBlock) {
        return (id <UICollectionViewDataSource>) self;
    }

    return nil;
}

- (instancetype)initWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                           cellIdentifier:(NSString *)cellIdentifier
              tableViewCellConfigureBlock:(TableViewCellConfigureBlock)tableViewCellConfigureBlock {
    self = [super init];
    if (self) {
        _orderedDictionary           = [orderedDictionary copy];
        _cellIdentifier              = [cellIdentifier copy];
        _tableViewCellConfigureBlock = [tableViewCellConfigureBlock copy];
    }

    return self;
}

+ (instancetype)tableViewDataSourceWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                                          cellIdentifier:(NSString *)cellIdentifier
                             tableViewCellConfigureBlock:(TableViewCellConfigureBlock)tableViewCellConfigureBlock {
    return [[self alloc] initWithOrderedDictionary:orderedDictionary
                                    cellIdentifier:cellIdentifier
                       tableViewCellConfigureBlock:tableViewCellConfigureBlock];
}

- (instancetype)initWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                           cellIdentifier:(NSString *)cellIdentifier
         collectionViewCellConfigureBlock:(CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock {
    self = [super init];
    if (self) {
        _orderedDictionary                = [orderedDictionary copy];
        _cellIdentifier                   = [cellIdentifier copy];
        _collectionViewCellConfigureBlock = [collectionViewCellConfigureBlock copy];
    }

    return self;
}

+ (instancetype)collectionViewDataSourceWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                                               cellIdentifier:(NSString *)cellIdentifier
                             collectionViewCellConfigureBlock:(CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock {
    return [[self alloc] initWithOrderedDictionary:orderedDictionary
                                    cellIdentifier:cellIdentifier
                  collectionViewCellConfigureBlock:collectionViewCellConfigureBlock];
}


@end