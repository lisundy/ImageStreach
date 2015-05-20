//
//  ViewController.m
//  图片拉伸
//
//  Created by pactera on 15/5/20.
//  Copyright (c) 2015年 pactera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (retain, nonatomic) UIButton *button;

@end


@implementation ViewController

- (void)dealloc
{
    [_button release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    self.button = [[[UIButton alloc] initWithFrame:
                    CGRectMake((screenSize.width - 150)/2, 100, 150, 50)] autorelease];
    
    UIImage *backImg = [UIImage imageNamed:@"1"];
    //35*63
    UIEdgeInsets insets = UIEdgeInsetsMake(6.5, 5, 6.5, 5);
    [backImg resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    [self.button setBackgroundImage:backImg forState:UIControlStateNormal];
    [self.view addSubview:self.button];
}


@end
