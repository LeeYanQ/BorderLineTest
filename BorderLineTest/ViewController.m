//
//  ViewController.m
//  BorderLineTest
//
//  Created by 训网高 on 2018/3/14.
//  Copyright © 2018年 训网高. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

//    self.label1.layer.borderWidth = 0.5;
//    self.label1.layer.borderColor = [UIColor cyanColor].CGColor;
//
//    self.view2.layer.borderWidth = 0.5;
//    self.view2.layer.borderColor = [UIColor cyanColor].CGColor;
    
    [self setBorderWithView:self.view1 top:NO left:NO bottom:NO right:YES borderColor:[UIColor clearColor] borderWidth:0 otherBorderWidth:1 otherColor:[UIColor cyanColor]];
    [self setBorderWithView:self.label1 top:YES left:YES bottom:YES right:NO borderColor:[UIColor clearColor] borderWidth:0 otherBorderWidth:1 otherColor:[UIColor cyanColor]];
    [self setBorderWithView:self.view2 top:YES left:NO bottom:NO right:NO borderColor:[UIColor clearColor] borderWidth:0 otherBorderWidth:1 otherColor:[UIColor cyanColor]];
}


- (void)setBorderWithView:(UIView *)view top:(BOOL)top left:(BOOL)left bottom:(BOOL)bottom right:(BOOL)right borderColor:(UIColor *)color borderWidth:(CGFloat)width otherBorderWidth:(CGFloat)otherWidth otherColor:(UIColor *)otherColor
{
    if (top) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, view.frame.size.width, width);
        layer.backgroundColor = color.CGColor;
        [view.layer addSublayer:layer];
    } else {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, view.frame.size.width, otherWidth);
        layer.backgroundColor = otherColor.CGColor;
        [view.layer addSublayer:layer];
    }
    if (left) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, width, view.frame.size.height);
        layer.backgroundColor = color.CGColor;
        [view.layer addSublayer:layer];
    } else {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, otherWidth, view.frame.size.height);
        layer.backgroundColor = otherColor.CGColor;
        [view.layer addSublayer:layer];
    }
    if (bottom) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, view.frame.size.height - width, view.frame.size.width, width);
        layer.backgroundColor = color.CGColor;
        [view.layer addSublayer:layer];
    } else {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, view.frame.size.height - otherWidth, view.frame.size.width, otherWidth);
        layer.backgroundColor = otherColor.CGColor;
        [view.layer addSublayer:layer];
    }
    if (right) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(view.frame.size.width - width, 0, width, view.frame.size.height);
        layer.backgroundColor = color.CGColor;
        [view.layer addSublayer:layer];
    } else {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(view.frame.size.width - width, 0, otherWidth, view.frame.size.height);
        layer.backgroundColor = otherColor.CGColor;
        [view.layer addSublayer:layer];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
