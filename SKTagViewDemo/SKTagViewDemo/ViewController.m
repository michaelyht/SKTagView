//
//  ViewController.m
//  SKTagViewDemo
//
//  Created by Michael on 2018/3/29.
//  Copyright © 2018年 michaelyht. All rights reserved.
//

#import "ViewController.h"

#import "SKTagView.h"

@interface ViewController (){
    
    __weak IBOutlet SKTagView *_sktagViewSM;//多选
    __weak IBOutlet SKTagView *_sktagViewSO;//单选
    __weak IBOutlet SKTagView *_sktagViewNo;//不选
    
    NSArray *_dataArray;
}

@end

@implementation ViewController
#pragma mark - life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _dataArray = @[@"水电费",@"是",@"稍等",@"稍等",@"似懂非懂舒服",@"是",@"撒的方式地方",@"水电费",@"刚好符合",@"突然",@"宝宝",@"opofsd"];
    
    //init tagview
    [self initNoWithType:SKTagViewStyleDefault skView:_sktagViewNo];
    [self initNoWithType:SKTagViewStyleOnlySelectOne skView:_sktagViewSO];
    [self initNoWithType:SKTagViewStyleCanSelectMore skView:_sktagViewSM];
}

#pragma mark - private mehtods

- (void)initNoWithType:(SKTagViewStyle)type skView:(SKTagView *)skTagView{
    
    skTagView.preferredMaxLayoutWidth = CGRectGetWidth(skTagView.frame);
    skTagView.padding = UIEdgeInsetsMake(12.f, 15.f, 12.f, 15.f);
    skTagView.interitemSpacing = 15;
    skTagView.lineSpacing = 16;
    skTagView.regularHeight = 31.f;
    skTagView.tagViewStyle = SKTagViewStyleCanSelectMore;//多选
    [skTagView removeAllTags];
    skTagView.tagViewStyle = type;
    //Add Tagse
    [_dataArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        SKTag *tag = [SKTag tagWithText:obj];
        tag.textColor = [UIColor grayColor];
        tag.selectTextColor = [UIColor whiteColor];
        tag.fontSize = 14.f;
        tag.padding = UIEdgeInsetsMake(5.f, 20.f, 5.f, 20.f);
        
        tag.bgColor = [UIColor clearColor];
        tag.selectBgColor = [UIColor colorWithRed:0.2 green:0.3 blue:0.5 alpha:0.5];
        
        tag.borderColor = [UIColor grayColor];
        tag.selectborderColor = [UIColor clearColor];
        tag.borderWidth = 1.f;
        tag.cornerRadius = 15.5;

        [skTagView addTag:tag];
    }];
    
    skTagView.didTapTagAtIndex = ^(NSUInteger index , UIButton * _Nonnull bnt){
        NSLog(@"%ld",index);
    };
}

#pragma mark - other ...
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
