//
//  XKWebViewCell.h
//  WebViewDemo
//
//  Created by 浪漫恋星空 on 2017/3/20.
//  Copyright © 2017年 浪漫恋星空. All rights reserved.
//

#import <UIKit/UIKit.h>


/// WebView完成加载时候的高度
typedef void(^WebViewDidFinishLoad)(CGFloat height);

/// 点击WebView中图片触发的回调
typedef void(^WebViewImageClickBlock)(NSArray *imageArray,NSInteger index);


@interface XKWebViewCell : UITableViewCell

@property (nonatomic, copy) WebViewDidFinishLoad block;

@property (nonatomic, copy) WebViewImageClickBlock imageClickBlock;

@property (nonatomic, copy) NSString *htmlString;

@end
