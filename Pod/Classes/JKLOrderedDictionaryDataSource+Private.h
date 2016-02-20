//
// Created by jiakai lian on 20/02/2016.
//

#import "JKLOrderedDictionaryDataSource.h"

@import OrderedDictionary;

@interface JKLOrderedDictionaryDataSource ()

@property(nonatomic, copy) OrderedDictionary *_Nullable orderedDictionary;
@property(nonatomic, copy) NSString *_Nonnull cellIdentifier;

@property(nonatomic, copy) TableViewCellConfigureBlock _Nullable      tableViewCellConfigureBlock;
@property(nonatomic, copy) CollectionViewCellConfigureBlock _Nullable collectionViewCellConfigureBlock;

@end