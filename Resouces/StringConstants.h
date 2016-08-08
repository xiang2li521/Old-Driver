//
//  StringConstants.h
//  1_ChangeColor
//
//  Created by RichyLeo on 16/6/15.
//  Copyright © 2016年 WTC. All rights reserved.
//

#ifndef StringConstants_h
#define StringConstants_h

/**
 *  获取屏幕的宽高
 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

// 缓存的路径
#define CACHE_PATH  [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"Cache"]
//获取随机色
#define LRRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]


#endif /* StringConstants_h */
