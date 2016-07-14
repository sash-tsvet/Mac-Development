//
//  ViewController.m
//  sample
//
//  Created by Alexandra on 14/07/16.
//  Copyright © 2016 Alexandra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (nonatomic) NSUInteger counter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _counter = 0;
    
    [self.button setTitle:@"Some Button" forState:UIControlStateNormal];
    [self.label setText:@"0"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonPressed:(id)sender {
    _counter++;
    
    [_label setText:[NSString stringWithFormat:@"%lu",(unsigned long)_counter]];
}

@end
