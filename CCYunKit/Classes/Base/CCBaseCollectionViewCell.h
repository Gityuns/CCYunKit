//
//  CCBaseCollectionViewCell.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCBaseCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) id model;

@property (nonatomic, copy) void (^clickItemOnCellWithTag)(NSInteger tag, id _Nullable attaches);

-(void)loadUI;

-(void)updateUIWithModel:(id)model;

+(CGSize)cellSize;
@end

NS_ASSUME_NONNULL_END
