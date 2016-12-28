//
//  SMBarrageViewController.m
//  SMAninationGroup
//
//  Created by simon on 16/12/23.<https://github.com/icoderRo/SMAnimation>

//  Copyright © 2016年 simon. All rights reserved.
//

#import "SMDanmakuViewController.h"
#import "SMDanmakuLabel.h"

#define kScreenW [UIScreen mainScreen].bounds.size.width
#define KScreenH [UIScreen mainScreen].bounds.size.height
#define path(resurce, type, component) [[[NSBundle mainBundle] pathForResource:resurce ofType:type] stringByAppendingPathComponent:component]

@interface SMDanmakuViewController ()

@end

@implementation SMDanmakuViewController
- (void)loadView {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"camera_blur_0"]];
    imageView.userInteractionEnabled = YES;
    self.view = imageView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    SMDanmakuLabel *label = [[SMDanmakuLabel alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    NSTextAttachment *attachment = [[NSTextAttachment alloc]init];
    attachment.image = [UIImage imageWithContentsOfFile:path(@"emitter", @"bundle", @"Sparkle1")];
    NSMutableAttributedString  *text = [[NSMutableAttributedString alloc]initWithString:@"弹幕图文测试"];
    [text insertAttributedString:[NSAttributedString attributedStringWithAttachment:attachment] atIndex:0];
    
    label.attributedText = text;
    label.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:label];

}


@end
