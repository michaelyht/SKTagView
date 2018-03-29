//
//  SKTagView.h
//
//  Created by Day Ling on 15/1/12.
//  Copyright (c) 2015 Day Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SKTag.h"

typedef NS_ENUM(NSInteger, SKTagViewStyle) {
    SKTagViewStyleDefault = 0,      //不可选
    SKTagViewStyleOnlySelectOne,   //单选
    SKTagViewStyleCanSelectMore   //多选
};

@interface SKTagView : UIView

@property (assign, nonatomic) UIEdgeInsets padding;
@property (assign, nonatomic) CGFloat lineSpacing;
@property (assign, nonatomic) CGFloat interitemSpacing;
@property (assign, nonatomic) CGFloat preferredMaxLayoutWidth;
@property (assign, nonatomic) CGFloat regularWidth; //!< 固定宽度
@property (nonatomic, assign) CGFloat regularHeight; //!< 固定高度
@property (nonatomic, assign) SKTagViewStyle tagViewStyle;//是否可以进行多选
@property (assign, nonatomic) BOOL singleLine;
@property (copy, nonatomic, nullable) void (^didTapTagAtIndex)(NSUInteger index , UIButton * _Nonnull bnt);

- (void)addTag: (nonnull SKTag *)tag;
- (void)insertTag: (nonnull SKTag *)tag atIndex:(NSUInteger)index;
- (void)removeTag: (nonnull SKTag *)tag;
- (void)removeTagAtIndex: (NSUInteger)index;
- (void)removeAllTags;

@end

