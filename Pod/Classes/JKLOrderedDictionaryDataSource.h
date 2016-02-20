//
// Created by jiakai lian on 20/02/2016.
//

#import <Foundation/Foundation.h>

@class OrderedDictionary;

NS_ASSUME_NONNULL_BEGIN

typedef void (^TableViewCellConfigureBlock)(UITableViewCell *_Nonnull cell, _Nonnull id item, NSIndexPath *_Nonnull indexPath);
typedef void (^CollectionViewCellConfigureBlock)(UICollectionViewCell *_Nonnull cell, _Nonnull id item, NSIndexPath *_Nonnull indexPath);

@interface JKLOrderedDictionaryDataSource : NSObject

@property(nonatomic, weak, readonly) id <UITableViewDataSource>      tableViewDataSource;
@property(nonatomic, weak, readonly) id <UICollectionViewDataSource> collectionViewDataSource;
- (instancetype)initWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                           cellIdentifier:(NSString *)cellIdentifier
              tableViewCellConfigureBlock:(TableViewCellConfigureBlock)tableViewCellConfigureBlock;
+ (instancetype)tableViewDataSourceWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                                          cellIdentifier:(NSString *)cellIdentifier
                             tableViewCellConfigureBlock:(TableViewCellConfigureBlock)tableViewCellConfigureBlock;

- (instancetype)initWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                           cellIdentifier:(NSString *)cellIdentifier
         collectionViewCellConfigureBlock:(CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock;
+ (instancetype)collectionViewDataSourceWithOrderedDictionary:(OrderedDictionary *)orderedDictionary
                                               cellIdentifier:(NSString *)cellIdentifier
                             collectionViewCellConfigureBlock:(CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock;
@end

NS_ASSUME_NONNULL_END