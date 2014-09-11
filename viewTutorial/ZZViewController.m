//
//  ZZViewController.m
//  viewTutorial
//
//  Created by Zehao Zhang on 14-9-10.
//  Copyright (c) 2014年 Zehao Zhang. All rights reserved.
//

#import "ZZViewController.h"
#import "ZZGrid.h"

@interface ZZViewController (){
    UIView* _gridView;
    UIButton* _button;
}

@end

@implementation ZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)* .1;
    CGFloat y = CGRectGetHeight(frame)* .1;
    CGFloat size = MIN(CGRectGetWidth(frame),CGRectGetHeight(frame))* .80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    _gridView = [[ZZGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc]initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    [_button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You've pressed the button");
}

@end
