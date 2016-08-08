//
//  Tools.h
//  4_Tools
//
//  Created by RichyLeo on 16/6/14.
//  Copyright © 2016年 WTC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Tools : NSObject

+(UIImage *)imageWithName:(NSString *)imagename;


// 创建Label
+(UILabel *)createLabelTitle:(NSString *)title
                       frame:(CGRect)frame
                        font:(UIFont *)font
               textAlignment:(NSTextAlignment)alignment;

/**
 *  创建文字性的按钮
 */
+(UIButton *)createTitleButton:(NSString *)title frame:(CGRect)
    frame target:(id)target action:(SEL)action;

//创建view ，指定背景色
+ (UIView*)createViewFrame:(CGRect)frame backgroundColor:(UIColor*)color;

//创建lable
+ (UILabel*)createLableFrame:(CGRect)frame  backgroundColor:(UIColor *)color  text:(NSString *)str  textColor:(UIColor *)textColor font:(UIFont *)font  numberOfLines:(int)numberOfLines   adjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;

//创建imageView
+ (UIImageView *)creatImageViewFrame:(CGRect)frame image:(UIImage*)image;
+ (UIImageView *)creatImageViewFrame:(CGRect)frame imageName:(NSString*)imageName;

//创建button，无背景图片
+ (UIButton *)creatButtonFrame:(CGRect )frame  backgroundColor:(UIColor*)color    setTitle:(NSString *)title   setTitleColor:(UIColor *)TitleColor    addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents ;

//创建button，有背景图片,无字体
+ (UIButton *)creatButtonFrame:(CGRect )frame  setBackgroundImage:(UIImage *)image   addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

//创建button，有背景图片
+ (UIButton *)creatButtonFrame:(CGRect )frame  setBackgroundImage:(UIImage *)image  setTitle:(NSString *)title setTitleColor:(UIColor *)TitleColor  addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

//创建textField,无图片，有密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame backgroundColor:(UIColor*)color secureTextEntry:(BOOL)secureTextEntry    placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing ;

//创建textField,无图片，无密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame backgroundColor:(UIColor*)color   placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing ;

//创建textField,有图片，无密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame background:(UIImage *)image    placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing ;

//创建textField,有图片，有密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame background:(UIImage *)image secureTextEntry:(BOOL)secureTextEntry   placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing ;






@end
