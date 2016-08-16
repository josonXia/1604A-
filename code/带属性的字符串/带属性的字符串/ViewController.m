//
//  ViewController.m
//  带属性的字符串
//
//  Created by dentist on 16/8/15.
//  Copyright © 2016年 xiazhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    [self.view addSubview:label];
    label.font = [UIFont systemFontOfSize:20];
//    label.text = @"¥998";
    //对于字符串，可以带有自身的布局属性
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:@"¥" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:30],NSForegroundColorAttributeName:[UIColor redColor]}];
    NSAttributedString *str2 = [[NSAttributedString alloc] initWithString:@"998" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:24]}];
    NSMutableAttributedString *str = [NSMutableAttributedString new];
    [str appendAttributedString:str1];
    [str appendAttributedString:str2];
    label.attributedText = str;
    //带属性的字符串可以添加附件 attachment
    NSTextAttachment *textAtt = [NSTextAttachment new];
    textAtt.image = [UIImage imageNamed:@"邮箱找回"];
    
    //调整图片的大小和位置
    textAtt.bounds = CGRectMake(-40, 20, 20, 15);
    
    NSAttributedString *str3 = [NSAttributedString attributedStringWithAttachment:textAtt];
    [str appendAttributedString:str3];
    label.attributedText = str;
    
    
    [label sizeToFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
