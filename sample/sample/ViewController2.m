//
//  ViewController2.m
//  sample
//
//  Created by Alexandra on 14/07/16.
//  Copyright © 2016 Alexandra. All rights reserved.
//

#import "ViewController2.h"


@interface ViewController2 ()
@property (nonatomic, strong) UILabel* label;
@property (nonatomic, strong) UIButton* button;
@property (nonatomic) int counter;
-(void) myEventHandler;
@end


@implementation ViewController2


-(instancetype)init {
    self = [super init];
    if (self) {
        _counter = 0;
    }
    return self;
}

-(void) myEventHandler {
    _counter++;
    [_label setText:[NSString stringWithFormat:@"%lu",(unsigned long)_counter]];
}


- (void)viewDidLoad {
    
    self.label = [[UILabel alloc] init];
    self.button = [[UIButton alloc] init];
    
    self.label.text =  [NSString stringWithFormat:@"%d", self.counter];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.backgroundColor = [UIColor redColor];
    [self.button setTitle:@"Press" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button.backgroundColor = [UIColor greenColor];
    
    [self.button addTarget:self action:@selector(myEventHandler) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
}



- (void)viewWillLayoutSubviews {
    
    CGRect screenSize = [[UIScreen mainScreen] bounds];
    int width = screenSize.size.width;
    int height = 30;
    if(UIInterfaceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation]))
    {
        self.label.frame = CGRectMake(0, screenSize.size.height/2 - height, width, height);
        self.button.frame = CGRectMake(0, screenSize.size.height/2, width, height);
    }
    else
    {
        self.label.frame = CGRectMake(0, 0, width, height);
        self.button.frame = CGRectMake(0, height, width, height);
    }
    
}





//- (IBAction)buttonPressed:(id)sender {
//    _counter++;
//    
//    [_label setText:[NSString stringWithFormat:@"%lu",(unsigned long)_counter]];
//}


@end
