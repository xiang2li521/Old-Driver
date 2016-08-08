//
//  Tools.m
//  4_Tools
//
//  Created by RichyLeo on 16/6/14.
//  Copyright © 2016年 WTC. All rights reserved.
//

#import "Tools.h"

@implementation Tools

+(UIImage *)imageWithName:(NSString *)imagename{
    //传入完整的图片名称带扩展名；
    NSString * path =[[NSBundle mainBundle]pathForResource:imagename ofType:nil];
    UIImage * image =[UIImage imageWithContentsOfFile:path];
    
    return image;
    
}




// 创建Label
+(UILabel *)createLabelTitle:(NSString *)title
                       frame:(CGRect)frame
                        font:(UIFont *)font
               textAlignment:(NSTextAlignment)alignment
{
    UILabel * label = [[UILabel alloc] init];
    label.frame = frame;
    label.text = title;
    label.textAlignment = alignment;
    label.font = font;
    
    return label;
}

/**
 *  创建文字性的按钮
 */
+(UIButton *)createTitleButton:(NSString *)title
                         frame:(CGRect)frame
                        target:(id)target
                        action:(SEL)action
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}
//创建view ，指定背景色

+(UIView *)createViewFrame:(CGRect)frame backgroundColor:(UIColor *)color{
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = color;
    return view;
}
//创建lable

+ (UILabel*)createLableFrame:(CGRect)frame  backgroundColor:(UIColor *)color  text:(NSString *)str  textColor:(UIColor *)textcolor font:(UIFont *)font  numberOfLines:(int)numberOfLines adjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth{
    
    UILabel*lable = [[UILabel alloc]initWithFrame:frame];
    
    lable.backgroundColor = color;
    lable.text = str;
    lable.textColor =textcolor;
    lable.font = font;
    lable.numberOfLines = numberOfLines;
    lable.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
    return lable;
}
//创建imageView

+(UIImageView *)creatImageViewFrame:(CGRect)frame image:(UIImage *)image{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    [imageView setImage:image];
    return  imageView;
    
}

+(UIImageView *)creatImageViewFrame:(CGRect)frame imageName:(NSString *)imageName{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    UIImage *image = [UIImage imageNamed:imageName];
    [imageView setImage:image];
    return imageView;
    
}
//创建button，无背景图片

+(UIButton *)creatButtonFrame:(CGRect )frame   backgroundColor:(UIColor*)color setTitle:(NSString *)title  setTitleColor:(UIColor *)TitleColor   addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = frame;
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:TitleColor forState:UIControlStateNormal];
    
    button.backgroundColor = color;
    
    [button addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents];
    
    return button;
}
//创建button，有背景图片,无字体

+(UIButton *)creatButtonFrame:(CGRect )frame   backgroundColor:(UIColor*)color    addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = frame;
    
    [button addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents];
    
    return button;
}
//创建button，有背景图片

+(UIButton *)creatButtonFrame:(CGRect )frame  setBackgroundImage:(UIImage *)image  setTitle:(NSString *)title setTitleColor:(UIColor *)TitleColor   addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:TitleColor forState:UIControlStateNormal];
    [button addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents];
    
    return button;
    
}


//创建textField,无图片，有密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame backgroundColor:(UIColor*)color secureTextEntry:(BOOL)secureTextEntry    placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing {
    
    UITextField *textField = [[UITextField alloc]init];
    textField.frame = frame ;
    textField.backgroundColor = color;
    textField.secureTextEntry =secureTextEntry;
    //textField.borderStyle = UITextBorderStyleLine;
    textField.placeholder = str;
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    return textField;
    
}
//创建textField,无图片，无密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame backgroundColor:(UIColor*)color   placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing  {
    
    UITextField *textField = [[UITextField alloc]init];
    textField.frame = frame ;
    textField.backgroundColor = color;
    //textField.borderStyle = UITextBorderStyleLine;
    textField.placeholder = str;
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    
    return textField;
}

//创建textField,有图片，无密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame background:(UIImage *)image    placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing {
    
    UITextField *textField = [[UITextField alloc]init];
    textField.frame = frame ;
    textField.background = image ;
    //textField.borderStyle = UITextBorderStyleLine;
    textField.placeholder = str;
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    
    return textField;
}

//创建textField,有图片，有密码。
+(UITextField *)createTextFieldFrame:(CGRect )frame background:(UIImage *)image secureTextEntry:(BOOL)secureTextEntry   placeholder:(NSString *)str clearsOnBeginEditing:(BOOL)clearsOnBeginEditing  {
    UITextField *textField = [[UITextField alloc]init];
    textField.frame = frame ;
    textField.background = image ;
    textField.secureTextEntry =secureTextEntry;
    // textField.borderStyle = UITextBorderStyleLine;
    textField.placeholder = str;
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    return textField;
    
}







@end
