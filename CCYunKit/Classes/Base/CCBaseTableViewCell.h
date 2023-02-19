//
//  CCBaseTableViewCell.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCBaseTableViewCell : UITableViewCell

@property (nonatomic, strong) id model;

@property (nonatomic, copy) void (^clickItemOnCellWithTag)(NSInteger tag, id _Nullable attaches);

-(void)loadUI;

-(void)updateUIWithModel:(id)model;

+(CGFloat)rowHeight;
@end

NS_ASSUME_NONNULL_END
