//
// Created by Day Ling on 15/1/12.
// Copyright (c) 2015 Day Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SKTag;
@interface SKTagButton: UIButton

@property (nonatomic, strong) SKTag * _Nullable skTag;

+ (nonnull instancetype)buttonWithTag:(nonnull SKTag *)tag;

@end
